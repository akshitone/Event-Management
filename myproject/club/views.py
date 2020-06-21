from django.shortcuts import redirect, render
from .models import Club
from department.models import Department
from django.core.files.storage import FileSystemStorage
from club.models import ClubMember
from student.models import Student
from main.models import Notification

# Create your views here.
def club_add(request):
    if request.method == 'POST':
        ClubImage      = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(ClubImage.name, ClubImage)
        url            = filesystem.url(filename)
        userId = request.user.id
        student = Student.objects.get(UserId_id=userId)
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
        clubMember = ClubMember(
            ClubId       = club,
            StudentId    = student,
            MemberRole   = 'Club Admin'
        )
        group = Group.objects.get(name="clubAdmin")
        request.user.groups.add(group)
        club.save()
        clubMember.save()

        notification = Notification(
            NotificationTitle            = "New Club ",
            NotificationName             = name,
            NotificationDescription      = "Added by " + request.user.first_name
        )
        notification.save()

        return redirect('/admin/club/add/')
    else:
        department_data = Department.objects.all()
        notification_data = Notification.objects.all()
        return render(request, 'admin/club-add.html', {'department_data': department_data, 'notification_data': notification_data})

def club_table(request):
    club_data = Club.objects.all()
    return render(request, 'admin/club-table.html', {'club_data': club_data})

def club_delete(request, name):
    club           = Club.objects.get(pk = name)
    filesystem     = FileSystemStorage()
    filesystem.delete(club.ClubImageName)
    club.delete()
    return redirect('/admin/club/')

def club_edit(request, name):
    if request.method == 'POST':
        ClubImage  = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(ClubImage.name, ClubImage)

        emp = Club.objects.get(pk = name)
        filesystem     = FileSystemStorage()
        filesystem.delete(emp.ClubImageName)

        url            = filesystem.url(filename)
        club = Club (
            ClubName            = request.POST['txtfullname'],
            ClubType            = request.POST['txtclubtype'],
            FacebookLink        = request.POST['txtfacebooklink'],
            DepartmentName_id   = request.POST['dropdowndepartment'],
            ClubImageName       = filename,
            ClubImage           = url,
            InstagramLink       = request.POST['txtinstagramlink'],
            TwitterLink         = request.POST['txttwitterlink'],
            DribbbleLink        = request.POST['txtdribbblelink'],
            clubStatus          = request.POST['txtclubstatus']
        )
        club.save()
        return redirect('/admin/club/')
    else:
        club_data       = Club.objects.filter(pk = name)
        department_data  = Department.objects.all()
        return render(request, 'admin/club-edit.html', {'name': name, 'club_data': club_data, 'department_data': department_data,})

def club_view(request, name):
    club_data = Club.objects.filter(pk = name)
    return render(request, 'admin/club-view.html', {'name': name, 'club_data': club_data})

def club_update_active(request, name):
    Club.objects.filter(pk = name).update(clubStatus=True)
    return redirect('/admin/club/')

def club_update_notactive(request, name):
    Club.objects.filter(pk = name).update(clubStatus=False)
    return redirect('/admin/club/')

def club_update_approval_yes(request, name):
    Club.objects.filter(pk = name).update(clubApproval=1)
    return redirect('/admin/club/')

def club_update_approval_no(request, name):
    Club.objects.filter(pk = name).update(clubApproval=-1)
    return redirect('/admin/club/')

    
def clubmember_add(request):
    if request.method == 'POST':
        clubmember = ClubMember (
            ClubId_id              = request.POST['dropdownclub'],
            StudentId_id           = request.POST['dropdownstudent'],
            MemberRole             = request.POST['txtrole']
        )
        clubmember.save()
        return redirect('/admin/clubmember/add/')
    else:
        club_data          = Club.objects.all()
        student_data       = Student.objects.all()
        return render(request, 'admin/clubmember-add.html', {'club_data': club_data, 'student_data': student_data})

def clubmember_table(request):
    clubmember_data = ClubMember.objects.all()
    return render(request, 'admin/clubmember-table.html', {'clubmember_data': clubmember_data})

def clubmember_view(request, id):
    clubmember_data = ClubMember.objects.filter(pk = id)
    return render(request, 'admin/clubmember-view.html', {'id': id, 'clubmember_data': clubmember_data})

def clubmember_edit(request, id):
    if request.method == 'POST':
        clubmember = ClubMember (
            ClubMemberId            = request.POST['txtclubmemberid'],
            MemberRole            = request.POST['txtmemberrole'],
            ClubId_id        = request.POST['dropdownclubname'],
            StudentId_id   = request.POST['dropdownstudent'],
        )
        clubmember.save()
        return redirect('/admin/clubmember/')
    else:
        clubmember_data       = ClubMember.objects.filter(pk = id)
        club_data  = Club.objects.all()
        student_data = Student.objects.all()
        return render(request, 'admin/clubmember-edit.html', {'id': id, 'clubmember_data': clubmember_data, 'club_data': club_data, 'student_data': student_data})

def clubmember_delete(request, id):
    clubmember           = ClubMember.objects.get(pk = id)
    clubmember.delete()
    return redirect('/admin/clubmember/')
