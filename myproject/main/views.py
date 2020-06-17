from django.shortcuts import render, get_object_or_404, redirect
from club.models import Club
from venue.models import Venue
from department.models import Department, SubDepartment
from event.models import Event
from student.models import Student
from django.utils.datetime_safe import date
from django.core.files.storage import FileSystemStorage

# Create your views here.
def home(request):
    club_data   = Club.objects.all()
    event_data  = Event.objects.filter(start = date.today())
    return render(request, 'client/home.html', {'club_data': club_data, 'event_data': event_data})

def registration(request):
    if request.method == 'POST':
        StudentImage  = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(StudentImage.name, StudentImage)
        url            = filesystem.url(filename)
        student = Student (
            StudentName            = request.POST['txtfullname'],
            StudentUserName        = request.POST['txtusername'],
            StudentPassword        = request.POST['txtpassword'],
            DepartmentName_id       = request.POST['dropdowndepartment'],
            SubDepartmentName_id    = request.POST['dropdownsubdepartment'],
            StudentImageName       = filename,
            StudentImage           = url,
            StudentGender                  = request.POST['gender'],
            StudentPhoneNumber           = request.POST['txtphoneno'],
            StudentEmail           = request.POST['txtemail'],
            StudentAddress         = request.POST['txtaddress'],
            StudentCity            = request.POST['txtcityname']
        )
        student.save()
        return render(request, 'client/registration-form.html')
    else:
        department_data = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'client/registration-form.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})

def venue(request):
    # del request.session['AdminUserName']
    venue_data = Venue.objects.all()
    return render(request, 'client/venue.html', {'venue_data': venue_data})

def club(request):
    club_data = Club.objects.all()
    return render(request, 'client/club.html', {'club_data': club_data})

def clubform(request):
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
        return render(request, 'client/club-form.html')
    else:
        department_data = Department.objects.all()
        return render(request, 'client/club-form.html', {'department_data': department_data})

def event(request):
    event_data = Event.objects.all()
    return render(request, 'client/event.html', {'event_data': event_data})

def event_view(request, id):
    event_data = Event.objects.filter(pk = id)
    return render(request, 'client/event-view.html', {'id': id,'event_data': event_data})


#admin side
def dashboard(request):
    # if request.session.get('AdminUserName'):
        return render(request, 'admin/dashboard.html')
    # else:
    #     return redirect('/login/')

def admin_login(request):
    # if request.method == 'POST':
    #     AdminUserName = request.POST['username']
    #     AdminPassword = request.POST['userpassword']
    #     admin = MainAdmin.objects.filter(AdminUserName = AdminUserName, AdminPassword = AdminPassword).exists()
    #     if admin:
    #         request.session['AdminUserName'] = request.user.username
    #         print("----------------------------------")
    #         print("----------------------------------")
    #         print(request.session['AdminUserName'])
    #         return redirect('/admin/')
    #         #del request.session['AdminUserName']
    #     else:
    #         return redirect('/login/')
    return render(request, 'admin/login-page.html')