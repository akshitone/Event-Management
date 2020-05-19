from django.shortcuts import redirect, render
from .models import Club
from department.models import Department
from django.core.files.storage import FileSystemStorage

# Create your views here.
def club_add(request):
    if request.method == 'POST':
        ClubImage      = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(ClubImage.name, ClubImage)
        url            = filesystem.url(filename)
        club = Club (
            ClubName           = request.POST['txtclubname'],  
            ClubType           = request.POST['txtclubtype'],  
            ClubImageName      = filename,  
            ClubImage          = url,  
            DepartmentName_id  = request.POST['dropdowndepartment'],
            FacebookLink       = request.POST['txtfacebook'],
            InstagramLink      = request.POST['txtinstagram'],
            TwitterLink        = request.POST['txttwitter'],
            DribbbleLink       = request.POST['txtdribbble']
        )
        club.save()
        return redirect('/admin/club/add/')
    else:
        department_data = Department.objects.all()
        return render(request, 'admin/club-add.html', {'department_data': department_data})

def club_table(request):
    club_data = Club.objects.all()
    return render(request, 'admin/club-table.html', {'club_data': club_data})