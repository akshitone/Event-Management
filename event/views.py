from django.shortcuts import redirect, render
from .models import Event
from .models import EventMember
from club.models import Club
from employee.models import Employee
from venue.models import Venue
from main.models import Notification
from django.core.files.storage import FileSystemStorage
from django.core import serializers
from django.http import HttpResponse, JsonResponse
import datetime
from myproject.customDecorators import *
from main.views import send_emails

# Create your views here.


@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def event_add(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                EventImage = request.FILES['txtimageurl']
                filesystem = FileSystemStorage()
                filename = filesystem.save(EventImage.name, EventImage)
                url = filesystem.url(filename)
                userId = request.user.id
                club = Club.objects.get(UserId_id=userId)
                name = request.POST['txteventname']
                event = Event(
                    title=name,
                    ClubName_id=club.ClubName,
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
                    NotificationDescription=name + " Added by " + club.ClubName
                )
                notification.save()
                send_emails(
                    'New Event', f'New Event "{event.title}" Has Been Formed By Club "{club.ClubName}" Checkout The Webiste To Know More')
            except:
                return JsonResponse({'error': 'Something Went Wrong'}, status=500)
            return JsonResponse({'msg': 'New Event Has Been Created'}, status=200)

    club_data = Club.objects.all()
    venue_data = Venue.objects.all()
    return render(request, 'admin/event-add.html', {'club_data': club_data, 'venue_data': venue_data})


def event_member_table(request):
    event_member_data = EventMember.objects.all()
    return render(request, 'admin/event-member.html', {'event_member_data': event_member_data})


def event_member_view(request, id):
    event_member_data = EventMember.objects.filter(pk=id)
    return render(request, 'admin/event-member-view.html', {'id': id, 'event_member_data': event_member_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def event_exists(request):
    if request.is_ajax():
        if request.method == 'POST':
            event_name = request.POST['event_name']
            userId = request.user.id
            club = Club.objects.get(UserId_id=userId)
            club_name = club.ClubName
            try:
                Event.objects.get(
                    title=event_name, ClubName_id=club_name)
                return JsonResponse({'error': 'Event Already Exists'}, status=422)
            except:
                return JsonResponse({'msg': 'Verified'}, status=200)


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def event_table(request):
    groups = request.user.groups.all()
    event_data = Event.objects.all()
    for group in groups:
        if "clubAdmin" in group.name:
            club = Club.objects.get(UserId_id=request.user.id)
            event_data = Event.objects.filter(ClubName_id=club.ClubName)
        elif "subAdmin" in group.name:
            employee = Employee.objects.get(UserId_id=request.user.id)
            department_name = employee.DepartmentName_id
            club_names = Club.objects.filter(DepartmentName_id=department_name)
            temp = False
            for club_name in club_names:
                if temp:
                    temp2 = Event.objects.filter(
                        ClubName_id=club_name.ClubName)
                    temp = temp.union(temp2)
                else:
                    temp = Event.objects.filter(
                        ClubName_id=club_name.ClubName)
            event_data = temp
            # Event.objects.filter(ClubName_id=club.ClubName)
    return render(request, 'admin/event-table.html', {'event_data': event_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def event_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                event_id = request.POST['event_id']
                event = Event.objects.get(pk=event_id)
                filesystem = FileSystemStorage()
                filesystem.delete(event.EventImageName)
                event.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({}, status=500)


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def calendar(request):
    groups = request.user.groups.all()
    userId = request.user.id
    event_data = Event.objects.all()
    for group in groups:
        if "clubAdmin" in group.name:
            club = Club.objects.get(UserId_id=userId)
            event_data = Event.objects.filter(ClubName_id=club.ClubName)
    fields = Event.objects.values_list(
        'title', 'ClubName_id', 'VenueId_id', 'EventType',
        'EventImageName', 'EventImage', 'EventEligibility', 'start', 'end',
        'EventStartTime', 'EventEndTime', 'EventDescription', 'EventAmount')
    events = eval(serializers.serialize("json", event_data))
    events = list(map(lambda x: x['fields'], events))
    return render(request, 'admin/calendar.html', {'events': events})


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def event_view(request, id):
    event_data = Event.objects.filter(pk=id)
    return render(request, 'admin/event-view.html', {'id': id, 'event_data': event_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin', 'superAdmin', 'subAdmin'])
def event_edit(request, id):
    if request.method == 'POST':
        EventImage = request.FILES['txtimageurl']
        filesystem = FileSystemStorage()
        filename = filesystem.save(EventImage.name, EventImage)

        emp = Event.objects.get(pk=id)
        filesystem = FileSystemStorage()
        filesystem.delete(emp.EventImageName)

        url = filesystem.url(filename)
        Event.objects.all().filter(pk=id).update(
            title=request.POST['txteventname'],
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
            EventAmount=request.POST['txtamount'],
        )
        return redirect('/admin/event/')
    else:
        event_data = Event.objects.filter(pk=id)
        club_data = Club.objects.all()
        venue_data = Venue.objects.all()
        return render(request, 'admin/event-edit.html', {'id': id, 'event_data': event_data, 'club_data': club_data, 'venue_data': venue_data})
