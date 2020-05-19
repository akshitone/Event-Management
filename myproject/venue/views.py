from django.shortcuts import redirect, render
from .models import Venue
from django.core.files.storage import FileSystemStorage

# Create your views here.
def venue_add(request):
    if request.method == 'POST':
        EmployeeImage  = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(EmployeeImage.name, EmployeeImage)
        url            = filesystem.url(filename)
        venue = Venue (
            VenueName        = request.POST['txtvenuename'],
            VenueLocation    = request.POST['txtlocation'],
            VenueImage       = url,
            VenueImageName   = filename
        )
        venue.save()
        return redirect('/admin/venue/add/')
    else:
        return render(request, 'admin/venue-add.html')

def venue_table(request):
    venue_data = Venue.objects.all()
    return render(request, 'admin/venue-table.html', {'venue_data': venue_data})