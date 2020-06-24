from django.shortcuts import redirect, render
from .models import Event
from club.models import Club
from venue.models import Venue
from main.models import Notification
from django.core.files.storage import FileSystemStorage
from django.core import serializers
from django.http import HttpResponse, JsonResponse
import datetime
from myproject.customDecorators import *

# Create your views here.
@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def event_add(request):
    if request.method == 'POST':
        EventImage = request.FILES['txtimageurl']
        filesystem = FileSystemStorage()
        filename = filesystem.save(EventImage.name, EventImage)
        url = filesystem.url(filename)

        name = request.POST['txteventname']
        event = Event(
            title=name,
            ClubName_id=request.POST['dropdownclub'],
            VenueId_id=request.POST['dropdownvenue'],
            EventType=request.POST['eventtype'],
            EventImageName=filename,
            EventImage=url,
            EventEligibility=request.POST['eventeligibility'],
            start=request.POST['txtstartdate'],
            end=request.POST['txtenddate'],
            EventStartTime=request.POST['txtstarttime'],
            EventEndTime=request.POST['txtendtime'],
            EventDescription=request.POST['txtdescription'],
            EventAmount=request.POST['txtamount']
        )
        event.save()

        notification = Notification(
            NotificationTitle="New Event",
            NotificationDescription=name + " Added by Akshit Mithaiwala"
        )
        notification.save()

        return redirect('/admin/event/add/')
    else:
        club_data = Club.objects.all()
        venue_data = Venue.objects.all()
        return render(request, 'admin/event-add.html', {'club_data': club_data, 'venue_data': venue_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def event_table(request):
    event_data = Event.objects.all()
    return render(request, 'admin/event-table.html', {'event_data': event_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def calendar(request):
    fields = Event.objects.values_list('EventId', 'title', 'ClubName_id', 'VenueId_id', 'EventType', 'EventImageName',
                                       'EventImage', 'EventEligibility', 'start', 'end', 'EventStartTime', 'EventEndTime', 'EventDescription', 'EventAmount')
    events = eval(serializers.serialize("json", Event.objects.all()))
    events = list(map(lambda x: x['fields'], events))
    return render(request, 'admin/calendar.html', {'events': events})
