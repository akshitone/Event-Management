import string
import secrets
from django.shortcuts import redirect, render
from .models import Club
from department.models import Department
from django.core.files.storage import FileSystemStorage
from club.models import ClubMember
from student.models import Student
from main.models import Notification
from myproject.customDecorators import *

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


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_table(request):
    club_data = Club.objects.all()
    return render(request, 'admin/club-table.html', {'club_data': club_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def club_delete(request, name):
    club = Club.objects.get(pk=name)
    filesystem = FileSystemStorage()
    filesystem.delete(club.ClubImageName)
    club.delete()
    return redirect('/admin/club/')


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
        club = Club(
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
        club.save()
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
    clubmember_data = ClubMember.objects.all()
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
        clubmember = ClubMember(
            ClubMemberId=request.POST['txtclubmemberid'],
            MemberRole=request.POST['txtmemberrole'],
            ClubId_id=request.POST['dropdownclubname'],
            StudentId_id=request.POST['dropdownstudent'],
        )
        clubmember.save()
        return redirect('/admin/clubmember/')
    else:
        clubmember_data = ClubMember.objects.filter(pk=id)
        club_data = Club.objects.all()
        student_data = Student.objects.all()
        return render(request, 'admin/clubmember-edit.html', {'id': id, 'clubmember_data': clubmember_data, 'club_data': club_data, 'student_data': student_data})


@authentication_check
@user_authentication(allowed_users=['clubAdmin'])
def clubmember_delete(request, id):
    clubmember = ClubMember.objects.get(pk=id)
    clubmember.delete()
    return redirect('/admin/clubmember/')
