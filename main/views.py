from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse
from club.models import Club, ClubMember
from venue.models import Venue
from department.models import Department, SubDepartment
from employee.models import Employee
from event.models import Event, EventMember
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
from django.http.response import JsonResponse
from django.contrib.auth.hashers import make_password
# Create your views here.


@client_authentication_check
def home(request):
    club_data = Club.objects.all()
    club_count = Club.objects.all().count()
    event_count = Event.objects.all().count()
    clubmember_count = ClubMember.objects.all().count()
    club_data = Club.objects.all()
    first = date.today()
    second = date.today() + datetime.timedelta(days=1)
    third = date.today() + datetime.timedelta(days=2)
    fourth = date.today() + datetime.timedelta(days=3)

    first_event_data = Event.objects.filter(start=first )
    second_event_data = Event.objects.filter(start=second )
    third_event_data = Event.objects.filter(start=third )
    forth_event_data = Event.objects.filter(start=fourth )

    context = {
        'fourth': fourth, 'third': third, 'second': second, 'first': first,
        'first_event_data': first_event_data, 'forth_event_data': forth_event_data,
        'third_event_data': third_event_data, 'second_event_data': second_event_data,
        'club_data': club_data,
        'club_count': club_count,
        'event_count': event_count,
        'clubmember_count': clubmember_count
    }
    return render(request, 'client/home.html', context)


@client_authentication_check
def registration(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                StudentImage = request.FILES['txtimageurl']
                filesystem = FileSystemStorage()
                filename = filesystem.save(StudentImage.name, StudentImage)
                url = filesystem.url(filename)
                # users = User.objects.get(username = request.POST['txtusername'])
                if User.objects.filter(username=request.POST['txtusername']).exists():
                    messages.warning(request, "User already exist")
                    return render(request, 'client/registration-form.html')
                # User Creation
                user = User.objects.create_user(
                    request.POST['txtusername'], request.POST['txtemail'], request.POST['txtpassword'])
                group = Group.objects.get(name="Student")
                user.groups.add(group)
                # Name split and join
                Name = request.POST['txtfullname'].split()
                if len(Name) > 1:
                    user.first_name = Name[0]
                    user.last_name = " ".join(Name[1:])
                else:
                    user.first_name = " ".join(Name)
                student = Student(
                    StudentName=request.POST['txtfullname'],
                    UserId_id=user.id,
                    # StudentUserName      = request.POST['txtusername'],
                    # StudentPassword      = request.POST['txtpassword'],
                    DepartmentName_id=request.POST['dropdowndepartment'],
                    SubDepartmentName_id=request.POST['dropdownsubdepartment'],
                    StudentImageName=filename,
                    StudentImage=url,
                    StudentGender=request.POST['gender'],
                    StudentPhoneNumber=request.POST['txtphoneno'],
                    StudentEmail=request.POST['txtemail'],
                    StudentAddress=request.POST['txtaddress'],
                    StudentCity=request.POST['txtcityname']
                )
                user.save()
                student.save()

                notification = Notification(
                NotificationTitle="New Student",
                NotificationDescription=request.POST['txtfullname'] +
                " Added by Akshit Mithaiwala"
                )
                notification.save()

                return JsonResponse({}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)
    department_data = Department.objects.all()
    subdepartment_data = SubDepartment.objects.all()
    context = {
        'department_data': department_data,
        'subdepartment_data': subdepartment_data
    }
    return render(request, 'client/registration-form.html', context)


def user_exists(request):
    if request.is_ajax():
        if request.method == 'POST':
            username = request.POST['username']
            try:
                User.objects.get(username=username)
                return JsonResponse({'error': 'Username Already Exists'}, status=422)
            except:
                return JsonResponse({'msg': 'Username Verified'}, status=200)


@client_authentication_check
def loginView(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                username = request.POST['username']
                password = request.POST['password']
                user = authenticate(
                    request, username=username, password=password)
                if user is not None:
                    if user.is_superuser:
                        return JsonResponse({'error': 'Unauthorized User!'}, status=403)
                    groups = user.groups.all()
                    for group in groups:
                        if "Student" in group.name:
                            login(request, user)
                            return JsonResponse({}, status=200)
                        else:
                            return JsonResponse({'error': 'Unauthorized User!'}, status=403)
                else:
                    return JsonResponse({'error': 'Invalid Credentials - Please Check Your Username Or Password'}, status=401)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)
    return render(request, 'client/login-page.html')


@client_authentication_check
def venue(request):
    # del request.session['AdminUserName']
    venue_data = Venue.objects.all()
    return render(request, 'client/venue.html', {'venue_data': venue_data})


@client_authentication_check
def club(request):
    club_data = Club.objects.all()
    return render(request, 'client/club.html', {'club_data': club_data})


@client_authentication_check
def club_single_view(request, name):
    club_data = Club.objects.filter(pk=name)
    event_data = Event.objects.filter(ClubName_id=name)
    clubmember_data = ClubMember.objects.filter(ClubId_id=name)
    return render(request, 'client/club-view.html', {'name': name, 'club_data': club_data, 'event_data': event_data, 'clubmember_data': clubmember_data})


@client_authentication_check
def clubform(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                ClubImage = request.FILES['txtimageurl']
                filesystem = FileSystemStorage()
                filename = filesystem.save(ClubImage.name, ClubImage)
                url = filesystem.url(filename)
                # userId = request.user.id
                user = User.objects.create_user(
                    request.POST['txtusername'], request.POST['txtemail'], request.POST['txtpassword'])
                group = Group.objects.get(name="clubAdmin")
                user.groups.add(group)
                # print(userId)
                # student = Student.objects.get(UserId_id=userId)
                club = Club(
                    ClubName=request.POST['txtclubname'],
                    UserId=user,
                    ClubType=request.POST['txtclubtype'],
                    ClubImageName=filename,
                    ClubImage=url,
                    DepartmentName_id=request.POST['dropdowndepartment']
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
                student = Student.objects.get(UserId_id=request.user.id)
                clubMember = ClubMember(
                    ClubId=club,
                    StudentId=student,
                    MemberRole='Club Admin'
                )
                user.save()
                club.save()
                clubMember.save()

                notification = Notification(
                NotificationTitle="New Club",
                NotificationDescription=request.POST['txtclubname'] + "Added by " + student
                )
                notification.save()
                # clubMember.save()

                # notification = Notification(
                #     NotificationTitle="New Club",
                #     NotificationDescription=request.POST['txtclubname'] + "Created"
                # )
                # notification.save()
                # if request.user.is_authenticated:
                #     logout(request)
                #     messages.info(request, "Login to access club dashboard")
                #     return render(request, 'admin/login-page.html')
                # else:
                #     messages.info(request, "Login to access club dashboard")
                #     return render(request, 'admin/login-page.html')
                return JsonResponse({'msg': "Proposal Has Been Sent"}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)
    department_data = Department.objects.all()
    return render(request, 'client/club-form.html', {'department_data': department_data})


@client_authentication_check
@authentication_check
def eventRegister(request, id):
    event_data = Event.objects.filter(pk=id)
    return render(request, 'client/event-view.html', {'id': id, 'event_data': event_data})


@client_authentication_check
def event(request):
    event_data = Event.objects.all().order_by('-id')
    return render(request, 'client/event.html', {'event_data': event_data})


@client_authentication_check
def event_view(request, id):
    event_data = Event.objects.filter(pk=id)
    return render(request, 'client/event-view.html', {'id': id, 'event_data': event_data})


@authentication_check
def changePassword(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                oldPassword = request.POST['oldpassword']
                newPassword = request.POST['newpassword']
                if request.user.check_password(oldPassword):
                    request.user.set_password(make_password(newPassword))
                    logout(request)
                    return JsonResponse({}, status=200)
                else:
                    return JsonResponse({'error': 'Old Password doesnot match'}, status=401)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)
    groups = request.user.groups.all()
    for group in groups:
        if "Student" in group.name:
            return render(request, 'client/change-password.html')
    return render(request, 'admin/change-password.html')

# admin side
@admin_authentication_check
@user_authentication(allowed_users=['superAdmin'])
def dashboard(request):
    club_count = Club.objects.all().count()
    event_count = Event.objects.all().count()
    active_event_count = Event.objects.filter(EventStatus='True').count()
    member_count = Employee.objects.all().count()
    active_member_count = Employee.objects.filter(EmployeeStatus='True').count()
    student_count = Student.objects.all().count()
    active_student_count = Student.objects.filter(StudentStatus='True').count()
    active_club = Club.objects.filter(clubStatus='True').count()
    active_club_data = Club.objects.filter(clubStatus='True')[:5]
    deactive_club = Club.objects.filter(clubStatus='False').count()
    deactive_club_data = Club.objects.filter(clubStatus='False')[:5]
    last_event = Event.objects.order_by('-id')[:5]
    last_student = Student.objects.order_by('-StudentId')[:5]
    last_employee = Employee.objects.order_by('-id')[:5]
    return render(request, 'admin/dashboard.html', {'active_event_count': active_event_count, 'active_student_count': active_student_count, 'last_employee': last_employee, 'club_count': club_count, 'active_club_data': active_club_data, 'deactive_club_data': deactive_club_data, 'last_student': last_student, 'event_count': event_count, 'member_count': member_count, 'student_count': student_count, 'active_club': active_club, 'deactive_club': deactive_club, 'last_event': last_event, 'active_member_count':active_member_count})
    # else:
    #     return redirect('/login/')
    """
    # if request.session.get('AdminUserName'):
        return render(request, 'admin/dashboard.html')
    # else:
    #     return redirect('/login/')
    """


@admin_authentication_check
@user_authentication(allowed_users=["subAdmin"])
def sub_admin_dashboard(request):
    uid=request.user.id
    dname = Employee.objects.get(UserId=uid).DepartmentName_id
    club_count = Club.objects.filter(DepartmentName_id = dname).count()
    event_count = Event.objects.filter(ClubName_id__DepartmentName_id = dname).count()
    active_event_count = Event.objects.filter(EventStatus = 'True',ClubName_id__DepartmentName_id = dname).count()
    student_count = Student.objects.filter(DepartmentName_id = dname).count()
    active_student_count = Student.objects.filter(StudentStatus = 'True',DepartmentName_id = dname).count()
    active_club = Club.objects.filter(clubStatus = 'True',DepartmentName_id = dname).count()
    active_club_data = Club.objects.filter(clubStatus = 'True',DepartmentName_id = dname)[:5]
    deactive_club = Club.objects.filter(clubStatus = 'False',DepartmentName_id = dname).count()
    deactive_club_data = Club.objects.filter(clubStatus = 'False',DepartmentName_id = dname)[:5]
    last_event = Event.objects.filter(ClubName_id__DepartmentName_id = dname).order_by('-id')[:5]
    last_student = Student.objects.filter(DepartmentName_id = dname).order_by('-StudentId')[:5]
    last_employee = Employee.objects.filter(DepartmentName_id = dname).order_by('-id')[:5]
    group = request.user.groups.get(name="subAdmin")
    context = {
        'active_student_count':active_student_count,'active_event_count':active_event_count,'last_employee':last_employee,'club_count':club_count,'active_club_data':active_club_data,'deactive_club_data':deactive_club_data,'last_student':last_student,'event_count':event_count,'student_count':student_count,'active_club':active_club,'deactive_club':deactive_club,'last_event':last_event,'group':group
    }
    return render(request, 'admin/subadmindashboard.html', context)
    # else:
    #     return redirect('/login/')


@admin_authentication_check
@user_authentication(allowed_users=["clubAdmin"])
def club_dashboard(request):
    club = Club.objects.get(UserId_id=request.user.id)
    event_count = Event.objects.filter(ClubName=club.ClubName).count()
    active_event_count = Event.objects.filter(
        ClubName=club.ClubName, EventStatus='True').count()
    member_count = ClubMember.objects.filter(ClubId=club.ClubName).count()
    active_member = ClubMember.objects.filter(
        ClubId=club.ClubName, StudentId__StudentStatus='True').count()
    last_event = Event.objects.filter(
        ClubName=club.ClubName).order_by('-id')[:5]
    last_member = ClubMember.objects.filter(
        ClubId=club.ClubName).order_by('-ClubMemberId')[:5]
    group = request.user.groups.get(name="clubAdmin")
    context = {
        'active_member': active_member, 'last_member': last_member,
        'active_event_count': active_event_count, 'event_count': event_count,
        'member_count': member_count, 'last_event': last_event, 'group': group
    }
    return render(request, 'admin/club-dashboard.html', context)
    # else:
    #     return redirect('/login/')


def adminLogin(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                username = request.POST['username']
                password = request.POST['password']
                user = authenticate(
                    request, username=username, password=password)
                if user is not None:
                    if user.is_superuser:
                        login(request, user)
                        return JsonResponse({'url': "/admin"}, status=200)
                    else:
                        groups = user.groups.all()
                        if groups is not None:
                            for group in groups:
                                if group.name == "clubAdmin":
                                    userId = user.id
                                    club = Club.objects.get(UserId_id=userId)
                                    if club.clubApproval:
                                        login(request, user)
                                        return JsonResponse({'url': "/clubadmin"}, status=200)
                                    else:
                                        return JsonResponse({'error': 'Club is not approved - please contact admin!'}, status=403)
                                elif group.name == "subAdmin":
                                    login(request, user)
                                    return JsonResponse({'url': "/subadmin"}, status=200)
                                else:
                                    return JsonResponse({'error': 'Unauthorized User!'}, status=403)
                        else:
                            return JsonResponse({'error': 'Unauthorized User!'}, status=403)
                else:
                    return JsonResponse({'error': 'Invalid Credentials - Please Check Your Username Or Password'}, status=401)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    return render(request, "admin/login-page.html")


def logoutView(request):
    groups = request.user.groups.all()
    if request.user.is_superuser:
        logout(request)
        return redirect('adminlogin')
    logout(request)
    for group in groups:
        if "Student" in group.name:
            return redirect('home')
        else:
            return redirect('adminlogin')
    return redirect("home")


def notification(request):
    notification_data = Notification.objects.all().order_by('-NotificationDateTime')
    return render(request, 'admin/notification.html', {'notification_data': notification_data})


def contactus(request):
    return render(request, 'client/contact-us.html')


def whoweare(request):
    employee_data = Employee.objects.all().order_by('id')
    return render(request, 'client/who-we-are.html', {'employee_data': employee_data})


def clubmember_add(request, name):
    userId = request.user.id
    student = Student.objects.get(UserId_id=userId)
    clubmember = ClubMember(
        ClubId_id=name,
        StudentId=student
    )
    clubmember.save()
    return redirect('club')


def eventmember_add(request, id):
    userId = request.user.id
    student = Student.objects.get(UserId_id=userId)
    eventmember = EventMember(
        EventId_id=id,
        StudentId=student
    )
    eventmember.save()
    return redirect('event')

def club_profile_view(request, id):
    return render(request, 'admin/event-member-view.html',{'member_data':member_data})

