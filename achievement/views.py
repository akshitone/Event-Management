from django.shortcuts import redirect, render
from .models import Achievement, Achiever
from department.models import Department, SubDepartment
from student.models import Student
from main.models import Notification
from myproject.customDecorators import *
from employee.models import Employee

# Create your views here.
@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achievement_add(request):
    if request.method == 'POST':
        uid=request.user.id
        dname = Employee.objects.get(UserId=uid).DepartmentName_id
        sdname = Employee.objects.get(UserId=uid).SubDepartmentName_id
        name = request.POST['txtachievementname']
        achievement = Achievement (
            AchievementName         = name,  
            DepartmentName_id       = dname,
            SubDepartmentName_id    = sdname,
            AchievementDescription  = request.POST['txtdescription']
        )
        achievement.save()

        notification = Notification(
            NotificationTitle            = "New Achievement",
            NotificationDescription      = name + " Added by Akshit Mithaiwala"
        )
        notification.save()

        return redirect('/admin/achievement/add/')
    else:
        department_data = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'admin/achievement-add.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})

@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achievement_table(request):
    achievement_data = Achievement.objects.all()
    return render(request, 'admin/achievement-table.html', {'achievement_data': achievement_data})

@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achievement_delete(request, id):
    achievement       = Achievement.objects.get(pk = id)
    achievement.delete()
    return redirect('/admin/achievement/')


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achievement_edit(request, id):
    if request.method == 'POST':
        uid=request.user.id
        dname = Employee.objects.get(UserId=uid).DepartmentName_id
        sdname = Employee.objects.get(UserId=uid).SubDepartmentName_id
        Achievement.objects.all().filter(pk=id).update(
            AchievementName            = request.POST['txtfullname'],
            DepartmentName_id       = dname,
            SubDepartmentName_id    = sdname,
            AchievementDescription           = request.POST['txtphoneno'],
        )
        return redirect('/admin/achievement/')
    else:
        achievement_data    = Achievement.objects.filter(pk = id)
        department_data     = Department.objects.all()
        subdepartment_data  = SubDepartment.objects.all()
        return render(request, 'admin/achievement-edit.html', {'id': id, 'achievement_data': achievement_data, 'department_data': department_data, 'subdepartment_data': subdepartment_data})



@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achiever_add(request):
    if request.method == 'POST':
        achievement_id = request.POST['dropdownachievement']
        student_id     = request.POST['dropdownstudent']
        achiever = Achiever (
            AchievementId_id       = achievement_id,
            StudentId_id           = student_id
        )
        achiever.save()

        notification = Notification(
            NotificationTitle            = "New Achiever",
            AchievementId_id             = achievement_id,
            StudentId_id                 = student_id,
            NotificationDescription      = " Added by Akshit Mithaiwala"
        )
        notification.save()

        return redirect('/admin/achiever/add/')
    else:
        achievement_data   = Achievement.objects.all()
        student_data       = Student.objects.all()
        return render(request, 'admin/achiever-add.html', {'achievement_data': achievement_data, 'student_data': student_data})

@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achiever_table(request):
    achiever_data = Achiever.objects.all()
    return render(request, 'admin/achiever-table.html', {'achiever_data': achiever_data})

@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achiever_edit(request, id):
    if request.method == 'POST':
        achiever = Achiever (
            id          = request.POST['txtachieverid'],
            AchievementId_id       = request.POST['dropdownachievement'],
            StudentId_id           = request.POST['dropdownstudent']
        )
        achiever.save()
        return redirect('/admin/achiever/')
    else:
        achiever_data       = Achiever.objects.filter(pk = id)
        achievement_data     = Achievement.objects.all()
        student_data        = Student.objects.all()
        return render(request, 'admin/achiever-edit.html', {'id': id, 'achievement_data': achievement_data, 'student_data': student_data, 'achiever_data': achiever_data})
    
@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def achiever_delete(request, id):
    achiever = Achiever.objects.get(pk=id)
    achiever.delete()
    return redirect('/admin/achiever/')
