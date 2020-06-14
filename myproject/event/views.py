from django.shortcuts import redirect, render
from .models import Event
from club.models import Club
from venue.models import Venue
from django.core.files.storage import FileSystemStorage

# Create your views here.
def event_add(request):
    if request.method == 'POST':
        EventImage     = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(EventImage.name, EventImage)
        url            = filesystem.url(filename)
        event = Event (
            EventName          = request.POST['txteventname'],
            ClubName_id        = request.POST['dropdownclub'],
            VenueId_id         = request.POST['dropdownvenue'],
            EventType          = request.POST['eventtype'],
            EventImageName     = filename,  
            EventImage         = url, 
            EventEligibility   = request.POST['eventeligibility'],
            EventStartDate     = request.POST['txtstartdate'],
            EventEndDate       = request.POST['txtenddate'],
            EventDescription   = request.POST['txtdescription'],
            EventAmount        = request.POST['txtamount']
        )
        event.save()
        return redirect('/admin/event/add/')
    else:
        club_data = Club.objects.all()
        venue_data = Venue.objects.all()
        return render(request, 'admin/event-add.html', {'club_data': club_data, 'venue_data': venue_data})

def event_table(request):
    event_data = Event.objects.all()
    return render(request, 'admin/event-table.html',{'event_data': event_data})