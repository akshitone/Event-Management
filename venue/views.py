from django.shortcuts import redirect, render
from .models import Venue
from django.core.files.storage import FileSystemStorage
from myproject.customDecorators import *
from django.http import JsonResponse

# Create your views here.
@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def venue_add(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                VenueImage = request.FILES['txtimageurl']
                filesystem = FileSystemStorage()
                filename = filesystem.save(VenueImage.name, VenueImage)
                url = filesystem.url(filename)
                venue = Venue(
                    VenueName=request.POST['txtvenuename'],
                    VenueLocation=request.POST['txtlocation'],
                    VenueImage=url,
                    VenueImageName=filename
                )
                venue.save()
            except:
                return JsonResponse({'error': 'Something Went Wrong'}, status=500)
            return JsonResponse({'msg': 'New Venue Has Been Added'}, status=200)
    return render(request, 'admin/venue-add.html')


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def venue_exists(request):
    if request.is_ajax():
        if request.method == 'POST':
            venue_name = request.POST['venue_name']
            try:
                Venue.objects.get(VenueName=venue_name)
                return JsonResponse({'error': 'Venue Already Exists'}, status=422)
            except:
                return JsonResponse({'msg': 'Verified'}, status=200)


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def venue_table(request):
    venue_data = Venue.objects.all()
    return render(request, 'admin/venue-table.html', {'venue_data': venue_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def venue_edit(request, id):
    if request.method == 'POST':
        VenueImage = request.FILES['txtimageurl']
        filesystem = FileSystemStorage()
        filename = filesystem.save(VenueImage.name, VenueImage)

        emp = Venue.objects.get(pk=id)
        filesystem = FileSystemStorage()
        filesystem.delete(emp.VenueImageName)

        url = filesystem.url(filename)
        venue = Venue(
            VenueId=request.POST['txtemployeeid'],
            VenueName=request.POST['txtfullname'],
            VenueImageName=filename,
            VenueImage=url,
            VenueLocation=request.POST['txtcityname']
        )
        venue.save()
        return redirect('/admin/venue/')
    else:
        venue_data = Venue.objects.filter(pk=id)
        return render(request, 'admin/venue-edit.html', {'id': id, 'venue_data': venue_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def venue_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                venue_id = request.POST['venue_id']
                venue = Venue.objects.get(pk=venue_id)
                filesystem = FileSystemStorage()
                filesystem.delete(venue.VenueImageName)
                venue.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({}, status=500)
