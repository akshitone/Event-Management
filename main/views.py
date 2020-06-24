from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse
from club.models import Club, ClubMember
from venue.models import Venue
from department.models import Department, SubDepartment
from employee.models import Employee
from event.models import Event
from venue.models import Venue
from student.models import Student
from .models import Notification
from django.utils.datetime_safe import date
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User, auth, Group
from myproject.customDecorators import *
from django.http import HttpResponseRedirect
import datetime
# Create your views here.
def home(request):
    club_data   = Club.objects.all()
    club_data   = Club.objects.all()
    first = date.today()
    second = date.today() + datetime.timedelta(days=1)
    third = date.today() + datetime.timedelta(days=2)
    fourth = date.today()  + datetime.timedelta(days=3)
    
    first_event_data  = Event.objects.filter(start = first, EventStatus = 'True')
    second_event_data  = Event.objects.filter(start = second, EventStatus = 'True')
    third_event_data  = Event.objects.filter(start = third, EventStatus = 'True')
    forth_event_data  = Event.objects.filter(start = fourth, EventStatus = 'True')
    return render(request, 'client/home.html', {'fourth':fourth,'third':third,'second':second,'first':first,'first_event_data':first_event_data,'forth_event_data':forth_event_data,'third_event_data':third_event_data,'second_event_data':second_event_data,'club_data': club_data})

def registration(request):
    if request.method == 'POST':
        StudentImage = request.FILES['txtimageurl']
        filesystem   = FileSystemStorage()
        filename     = filesystem.save(StudentImage.name, StudentImage)
        url          = filesystem.url(filename)
        # users = User.objects.get(username = request.POST['txtusername'])
        if User.objects.filter(username = request.POST['txtusername']).exists():
            messages.warning(request,"User already exist")
            return render(request, 'client/registration-form.html')
        # User Creation
        user = User.objects.create_user(request.POST['txtusername'],request.POST['txtemail'],request.POST['txtpassword'])
        group = Group.objects.get(name="Student")
        user.groups.add(group)
        # Name split and join
        Name = request.POST['txtfullname'].split()
        if len(Name) > 1:
            user.first_name = Name[0]
            user.last_name  = " ".join(Name[1:])
        else:
            user.first_name = " ".join(Name)
        student = Student (
              StudentName          = request.POST['txtfullname'],
              UserId_id               = user.id,
            # StudentUserName      = request.POST['txtusername'],
            # StudentPassword      = request.POST['txtpassword'],
              DepartmentName_id    = request.POST['dropdowndepartment'],
              SubDepartmentName_id = request.POST['dropdownsubdepartment'],
              StudentImageName     = filename,
              StudentImage         = url,
              StudentGender        = request.POST['gender'],
              StudentPhoneNumber   = request.POST['txtphoneno'],
              StudentEmail         = request.POST['txtemail'],
              StudentAddress       = request.POST['txtaddress'],
              StudentCity          = request.POST['txtcityname']
        )
        user.save()
        student.save()
        return redirect('home')
    else:
        department_data    = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'client/registration-form.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})

def venue(request):
    # del request.session['AdminUserName']
    venue_data = Venue.objects.all()
    return render(request, 'client/venue.html', {'venue_data': venue_data})

def club(request):
    club_data = Club.objects.all()
    return render(request, 'client/club.html', {'club_data': club_data})


def club_single_view(request, name):
    club_data = Club.objects.filter(pk = name)
    event_data = Event.objects.filter(ClubName_id = name)
    clubmember_data = ClubMember.objects.filter(ClubId_id = name)
    return render(request, 'client/club-view.html', {'name': name,'club_data': club_data, 'event_data': event_data, 'clubmember_data': clubmember_data})

def clubform(request):
    if request.method == 'POST':
        ClubImage      = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(ClubImage.name, ClubImage)
        url            = filesystem.url(filename)
        # userId = request.user.id
        clubs = Club.objects.filter(ClubName=request.POST['txtclubname'])
        if Club.objects.filter(pk=request.POST['txtclubname']).exists():
            print(clubs)    
            department_data = Department.objects.all()
            messages.warning(request,"Club Already Exist!")
            return render(request, 'client/club-form.html', {'department_data': department_data})
        users = User.objects.all().filter(username = request.POST['txtusername'])
        if User.objects.filter(username = request.POST['txtusername']).exists():
            print(users)
            messages.warning(request,"Username already exist")
            department_data = Department.objects.all()
            return render(request, 'client/club-form.html', {'department_data': department_data})
        user = User.objects.create_user(request.POST['txtusername'],request.POST['txtemail'],request.POST['txtpassword'])
        group = Group.objects.get(name="clubAdmin")
        user.groups.add(group)
        # print(userId)
        # student = Student.objects.get(UserId_id=userId)
        club = Club (
            ClubName          = request.POST['txtclubname'],
            UserId            = user,
            ClubType          = request.POST['txtclubtype'],
            ClubImageName     = filename,
            ClubImage         = url,
            DepartmentName_id = request.POST['dropdowndepartment']
            # FacebookLink       = request.POST['txtfacebook'],
            # InstagramLink      = request.POST['txtinstagram'],
            # TwitterLink        = request.POST['txttwitter'],
            # DribbbleLink       = request.POST['txtdribbble']
        )
        # clubMember = ClubMember(
        #     ClubId       = club,
        #     StudentId    = student,
        #     MemberRole   = 'Club Admin'
        # )
        user.save()
        club.save()
        # clubMember.save()

        notification = Notification(
            NotificationTitle            = "New Club",
            NotificationDescription      = request.POST['txtclubname'] + "Created"
        )
        notification.save()
        if request.user.is_authenticated:
            logout(request)
            messages.info(request,"Login to access club dashboard")
            return render(request, 'admin/login-page.html')
        else:
            messages.info(request,"Login to access club dashboard")
            return render(request, 'admin/login-page.html')

    else:
        department_data = Department.objects.all()
        return render(request, 'client/club-form.html', {'department_data': department_data})

@authentication_check
def eventRegister(request, id):
    event_data = Event.objects.filter(pk = id)
    return render(request, 'client/event-view.html', {'id': id,'event_data': event_data})

def event(request):
    event_data = Event.objects.all().order_by('-id')
    return render(request, 'client/event.html', {'event_data': event_data})

def event_view(request, id):
    event_data = Event.objects.filter(pk = id)
    return render(request, 'client/event-view.html', {'id': id,'event_data': event_data})


#admin side
@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def dashboard(request):
    club_count = Club.objects.all().count()
    event_count = Event.objects.all().count()
    active_event_count = Event.objects.filter(EventStatus = 'True').count()
    member_count = ClubMember.objects.all().count()
    student_count = Student.objects.all().count()
    active_student_count = Student.objects.filter(StudentStatus = 'True').count()
    active_club = Club.objects.filter(clubStatus = 'True').count()
    active_club_data = Club.objects.filter(clubStatus = 'True')[:5]
    deactive_club = Club.objects.filter(clubStatus = 'False').count()
    deactive_club_data = Club.objects.filter(clubStatus = 'False')[:5]
    last_event = Event.objects.order_by('-id')[:5]
    last_student = Student.objects.order_by('-StudentId')[:5]
    last_employee = Employee.objects.order_by('-id')[:5]
    return render(request, 'admin/dashboard.html',{'active_event_count':active_event_count,'active_student_count':active_student_count,'last_employee':last_employee,'club_count':club_count,'active_club_data':active_club_data,'deactive_club_data':deactive_club_data,'last_student':last_student,'event_count':event_count,'member_count':member_count,'student_count':student_count,'active_club':active_club,'deactive_club':deactive_club,'last_event':last_event})
    # else:
    #     return redirect('/login/')
    """ 
    # if request.session.get('AdminUserName'):
        return render(request, 'admin/dashboard.html')
    # else:
    #     return redirect('/login/')
 """
@authentication_check
@user_authentication(allowed_users=["subAdmin"])
def sub_admin_dashboard(request):
    # if request.session.get('AdminUserName'):
    club_count = Club.objects.all().count()
    event_count = Event.objects.all().count()
    member_count = ClubMember.objects.all().count()
    student_count = Student.objects.all().count()
    active_club = Club.objects.filter(clubStatus = 'True').count()
    active_club_data = Club.objects.filter(clubStatus = 'True')[:5]
    deactive_club = Club.objects.filter(clubStatus = 'False').count()
    deactive_club_data = Club.objects.filter(clubStatus = 'False')[:5]
    last_event = Event.objects.order_by('-id')[:5]
    last_student = Student.objects.order_by('-StudentId')[:5]
    last_employee = Employee.objects.order_by('-id')[:5]
    group = request.user.groups.get(name="subAdmin")
    return render(request, 'admin/subadmindashboard.html',{'last_employee':last_employee,'club_count':club_count,'active_club_data':active_club_data,'deactive_club_data':deactive_club_data,'last_student':last_student,'event_count':event_count,'member_count':member_count,'student_count':student_count,'active_club':active_club,'deactive_club':deactive_club,'last_event':last_event,'group':group})
    # else:
    #     return redirect('/login/')
@authentication_check
@user_authentication(allowed_users=["clubAdmin"])
def club_dashboard(request, clubName):
    # if request.session.get('AdminUserName'):
    name = clubName
    event_count = Event.objects.filter(ClubName = name).count()
    active_event_count = Event.objects.filter(ClubName = name, EventStatus = 'True').count()
    member_count = ClubMember.objects.filter(ClubId = name).count()
    active_member = ClubMember.objects.filter(ClubId = name,StudentId__StudentStatus = 'True').count()
    last_event = Event.objects.filter(ClubName = name).order_by('-id')[:5]
    last_member = ClubMember.objects.filter(ClubId = name).order_by('-ClubMemberId')[:5]
    group = request.user.groups.get(name="clubAdmin")
    return render(request, 'admin/club-dashboard.html',{'active_member':active_member,'last_member':last_member,'active_event_count':active_event_count,'event_count':event_count,'member_count':member_count,'last_event':last_event,'group':group})
    # else:
    #     return redirect('/login/')

def adminLogin(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['userpassword']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            print(user.is_superuser)
            login(request,user)
            if user.is_superuser:
                return redirect('dashboard')
            else:
                groups = user.groups.all()
                if groups is not None:
                    for group in groups:
                        print(group.name)
                        if group.name == "clubAdmin":
                            userId = user.id
                            club = Club.objects.get(UserId_id = userId)
                            # clubMember = ClubMember.objects.all().filter(ClubId = club.ClubName)
                            
                            # print(clubMember.ClubId.ClubName)
                            return HttpResponseRedirect(reverse('clubdashboard',args=(club.ClubName,)))
                        elif group.name == "subAdmin":
                            return redirect('subadmindashboard')
                messages.warning(request, "Not Authorized User")
                return render(request, 'admin/login-page.html')
        else: 
            messages.warning(request, "Invalid Credentials")
            return render(request, 'admin/login-page.html')

    if request.method == "GET":
        return render(request, "admin/login-page.html")

def loginView(request):
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
    if request.method == 'POST':
        username = request.POST['txtusername']
        password = request.POST['txtpassword']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            print(user.is_superuser)
            login(request,user)
            return redirect("home")
        else: 
            messages.warning(request, "Invalid Credentials")
            return render(request, 'client/login-page.html')

    if request.method == "GET":
        return render(request, 'client/login-page.html')

def logoutView(request):
    groups = request.user.groups.all()
    if request.user.is_superuser:
        logout(request)
        return redirect('adminlogin')
    
    logout(request) 
    for group in groups:
        if "Admin" in group.name:
            return redirect('adminlogin')

    return redirect("home")


def notification(request):
    notification_data = Notification.objects.all().order_by('-NotificationDateTime')
    return render(request, 'admin/notification.html', {'notification_data': notification_data})

def contactus(request):
    return render(request, 'client/contact-us.html')
