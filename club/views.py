import string
import secrets
from django.shortcuts import redirect, render
from .models import ClubMember, ClubRequest, Club, ClubMemberRequest
from django.contrib.auth.models import User, auth, Group
from department.models import Department
from django.core.files.storage import FileSystemStorage
from student.models import Student
from main.models import Notification
from myproject.customDecorators import *
from django.http import JsonResponse
from employee.models import Employee
from django.core.mail import send_mail
from main.views import send_emails
# Create your views here.


def club_add(request):
    if request.method == 'POST':
        ClubImage = request.FILES['txtimageurl']
        filesystem = FileSystemStorage()
        filename = filesystem.save(ClubImage.name, ClubImage)
        url = filesystem.url(filename)
        # Name split and join
        club_username = request.POST['txtclubname'].lower().split()
        if len(club_username) > 1:
            club_username = club_username[0] + "@events.com"
        else:
            club_username = "".join(club_username) + "@events.com"
        alphabet = string.ascii_letters + string.digits
        password = ''.join(secrets.choice(alphabet) for i in range(10))
        userId = request.user.id
        student = Student.objects.get(UserId_id=userId)
        email = student.StudentEmail
        # User Creation
        user = User.objects.create_user(
            club_username,
            email,
            password
        )

        club = Club(
            ClubName=request.POST['txtclubname'],
            ClubType=request.POST['txtclubtype'],
            ClubImageName=filename,
            ClubImage=url,
            DepartmentName_id=request.POST['dropdowndepartment'],
            FacebookLink=request.POST['txtfacebook'],
            InstagramLink=request.POST['txtinstagram'],
            TwitterLink=request.POST['txttwitter'],
            DribbbleLink=request.POST['txtdribbble']
        )
        clubMember = ClubMember(
            ClubId=club,
            StudentId=student,
            MemberRole='Club Admin'
        )

        group = Group.objects.get(name="clubAdmin")
        user.groups.add(group)
        user.save()
        club.save()
        clubMember.save()

        notification = Notification(
            NotificationTitle="New Club",
            NotificationDescription=name + "Added by " + request.user.first_name
        )
        notification.save()

        return redirect('/admin/club/add/')
    else:
        department_data = Department.objects.all()
        notification_data = Notification.objects.all().order_by(
            '-NotificationDateTime')[:3]
        return render(request, 'admin/club-add.html', {'department_data': department_data, 'notification_data': notification_data})


def club_approval(request):
    if request.is_ajax():
        if request.method == 'POST':
            club_data = ClubRequest.objects.get(
                id=request.POST['request_id']
            )
            student = Student.objects.get(
                StudentId=club_data.StudentId_id)
            if request.POST['status'] == "approve":
                user = User.objects.create_user(
                    club_data.ClubUserName, club_data.ClubEmail, club_data.ClubPassword)
                group = Group.objects.get(name="clubAdmin")
                user.groups.add(group)
                club = Club(
                    ClubName=club_data.ClubName,
                    UserId=user,
                    ClubType=club_data.ClubType,
                    ClubImageName=club_data.ClubImageName,
                    ClubImage=club_data.ClubImage,
                    DepartmentName_id=club_data.DepartmentName_id
                )
                clubMember = ClubMember(
                    ClubId=club,
                    StudentId=student,
                    MemberRole='Club Admin'
                )
                user.save()
                club.save()
                clubMember.save()
                notification = Notification(
                    NotificationTitle="New Club ",
                    NotificationDescription=f'{club_data.ClubName} Approved by {request.user.first_name} {request.user.last_name}!'
                )
                notification.save()
                club_request = ClubRequest.objects.get(
                    pk=request.POST['request_id'])
                club_request.delete()
                send_mail(
                    'Club Proposal',
                    f'We are Glad to inform you that your proposal has been accepted for Club "{club.ClubName}"!',
                    'akshiiitone@gmail.com',
                    [student.StudentEmail],
                    fail_silently=False,
                )
                send_emails(
                    'New Club', f'New Club "{club.ClubName}" Has Been Formed Checkout The Webiste To Know More')
                return JsonResponse({}, status=200)
            else:
                club_request = ClubRequest.objects.get(
                    pk=request.POST['request_id'])
                filesystem = FileSystemStorage()
                club_request.delete()
                filesystem.delete(club_request.ClubImageName)
                send_mail(
                    'Club Proposal',
                    f'We are sorry to inform you that your proposal has been denied for Club "{club.ClubName}"',
                    'akshiiitone@gmail.com',
                    [student.StudentEmail],
                    fail_silently=False,
                )
                return JsonResponse({}, status=200)
            return JsonResponse({}, status=500)


def club_member_approval(request):
    if request.is_ajax():
        if request.method == 'POST':
            club_data = ClubMemberRequest.objects.get(
                id=request.POST['request_id']
            )
            student = Student.objects.get(
                StudentId=club_data.StudentId_id)
            club = Club.objects.get(
                ClubName=club_data.ClubId_id)
            if request.POST['status'] == "approve":
                clubMember = ClubMember(
                    ClubId=club,
                    StudentId=student,
                    MemberRole='Club Member'
                )
                clubMember.save()
                notification = Notification(
                    NotificationTitle="New Club Member ",
                    NotificationDescription=club_data.ClubId_id +
                    " Added by " + student.StudentName
                )
                notification.save()
                club_request = ClubMemberRequest.objects.get(
                    pk=request.POST['request_id'])
                club_request.delete()
                send_mail(
                    'Club Member Proposal',
                    f'We are Glad to inform you that you are member of Club "{club.ClubName}"',
                    'akshiiitone@gmail.com',
                    [student.StudentEmail],
                    fail_silently=False,
                )
                return JsonResponse({}, status=200)
            else:
                club_request = ClubMemberRequest.objects.get(
                    pk=request.POST['request_id'])
                club_request.delete()
                send_mail(
                    'Club Member Proposal',
                    f'We are sorry to inform you that Club "{club.ClubName}" denied your proposal',
                    'akshiiitone@gmail.com',
                    [student.StudentEmail],
                    fail_silently=False,
                )
                return JsonResponse({}, status=200)
            return JsonResponse({}, status=500)


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_table(request):
    uid = request.user.id
    s = request.user.is_superuser
    if s:
        club_data = Club.objects.all()
        return render(request, 'admin/club-table.html', {'club_data': club_data})
    else:
        dname = Employee.objects.get(UserId=uid).DepartmentName_id
        club_data = Club.objects.filter(DepartmentName_id=dname)
        return render(request, 'admin/club-table.html', {'club_data': club_data})


def club_exists(request):
    if request.is_ajax():
        if request.method == 'POST':
            club_name = request.POST['club_name']
            try:
                Club.objects.get(ClubName=club_name)
                return JsonResponse({'error': 'Club Already Exists'}, status=422)
            except:
                return JsonResponse({'msg': 'Verified'}, status=200)


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                club_name = request.POST['club_name']
                club = Club.objects.get(pk=club_name)
                userId = club.UserId_id
                user = User.objects.get(pk=userId)
                filesystem = FileSystemStorage()
                club.delete()
                filesystem.delete(club.ClubImageName)
                user.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({}, status=500)


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_edit(request, name):
    if request.method == 'POST':
        ClubImage = request.FILES['txtimageurl']
        filesystem = FileSystemStorage()
        filename = filesystem.save(ClubImage.name, ClubImage)

        emp = Club.objects.get(pk=name)
        filesystem = FileSystemStorage()
        filesystem.delete(emp.ClubImageName)

        url = filesystem.url(filename)
        Club.objects.all().filter(ClubName=name).update(
            ClubName=request.POST['txtfullname'],
            ClubType=request.POST['txtclubtype'],
            FacebookLink=request.POST['txtfacebooklink'],
            DepartmentName_id=request.POST['dropdowndepartment'],
            ClubImageName=filename,
            ClubImage=url,
            InstagramLink=request.POST['txtinstagramlink'],
            TwitterLink=request.POST['txttwitterlink'],
            DribbbleLink=request.POST['txtdribbblelink'],
            clubStatus=request.POST['txtclubstatus']
        )
        return redirect('/admin/club/')
    else:
        club_data = Club.objects.filter(pk=name)
        department_data = Department.objects.all()
        return render(request, 'admin/club-edit.html', {'name': name, 'club_data': club_data, 'department_data': department_data, })


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_view(request, name):
    club_data = Club.objects.filter(pk=name)
    return render(request, 'admin/club-view.html', {'name': name, 'club_data': club_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_update_active(request, name):
    Club.objects.filter(pk=name).update(clubStatus=True)
    return redirect('/admin/club/')


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_update_notactive(request, name):
    Club.objects.filter(pk=name).update(clubStatus=False)
    return redirect('/admin/club/')


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_update_approval_yes(request, name):
    Club.objects.filter(pk=name).update(clubApproval=1)
    return redirect('/admin/club/')


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_update_approval_no(request, name):
    Club.objects.filter(pk=name).update(clubApproval=-1)
    return redirect('/admin/club/')


@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def clubmember_add(request):
    if request.method == 'POST':
        clubname = request.POST['dropdownclub']
        student_id = request.POST['dropdownstudent']
        clubmember = ClubMember(
            ClubId_id=clubname,
            StudentId_id=student_id,
            MemberRole=request.POST['txtrole']
        )
        clubmember.save()

        notification = Notification(
            NotificationTitle="New Club member",
            StudentId_id=student_id,
            NotificationDescription=clubname + " Added by Akshit Mithaiwala"
        )
        notification.save()

        return redirect('/admin/clubmember/add/')
    else:
        club_data = Club.objects.all()
        student_data = Student.objects.all()
        return render(request, 'admin/clubmember-add.html', {'club_data': club_data, 'student_data': student_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def clubmember_table(request):
    uid = request.user.id
    cname = Club.objects.get(UserId=uid).ClubName
    clubmember_data = ClubMember.objects.filter(ClubId_id=cname)
    return render(request, 'admin/clubmember-table.html', {'clubmember_data': clubmember_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def clubmember_view(request, id):
    clubmember_data = ClubMember.objects.filter(pk=id)
    return render(request, 'admin/clubmember-view.html', {'id': id, 'clubmember_data': clubmember_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def clubmember_edit(request, id):
    if request.method == 'POST':
        ClubMember.objects.all().filter(pk=id).update(
            ClubMemberId=request.POST['txtclubmemberid'],
            MemberRole=request.POST['txtmemberrole'],
            ClubId_id=request.POST['dropdownclubname'],
            StudentId_id=request.POST['dropdownstudent'],
        )
        return redirect('/clubadmin/clubmember/')
    else:
        clubmember_data = ClubMember.objects.filter(pk=id)
        club_data = Club.objects.all()
        student_data = Student.objects.all()
        return render(request, 'admin/clubmember-edit.html', {'id': id, 'clubmember_data': clubmember_data, 'club_data': club_data, 'student_data': student_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def clubmember_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                clubmember_id = request.POST['clubmember_id']
                clubmember = ClubMember.objects.get(pk=clubmember_id)
                clubmember.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({}, status=500)
