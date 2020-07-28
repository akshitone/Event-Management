from django.shortcuts import redirect, render
from student.models import Student
from department.models import Department, SubDepartment
from main.models import Notification
from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.models import User, Group
from myproject.customDecorators import *
from employee.models import Employee

# Create your views here.


def student_add(request):
    if request.method == 'POST':
        StudentImage = request.FILES['txtimageurl']
        filesystem = FileSystemStorage()
        filename = filesystem.save(StudentImage.name, StudentImage)
        url = filesystem.url(filename)
        users = User.objects.all()
        for user in users:
            if user.username == request.POST['txtusername']:
                messages.warning(request, "User already exist")
                return redirect('/admin/student/add/')
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
        user.save()
        student = Student(
            StudentName=request.POST['txtfullname'],
            UserId=user,
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
        student.save()

        notification = Notification(
            NotificationTitle="New Student",
            NotificationDescription=request.POST['txtfullname'] +
            " Added by Akshit Mithaiwala"
        )
        notification.save()

        return redirect('/admin/student/add/')
    else:
        department_data = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'admin/student-add.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def student_table(request):
    uid=request.user.id
    s = request.user.is_superuser
    if s:
        student_data = Student.objects.all().order_by('StudentId')
        return render(request, 'admin/student-table.html', {'student_data': student_data})
    else:
        dname = Employee.objects.get(UserId=uid).DepartmentName_id
        student_data = Student.objects.filter(DepartmentName_id=dname).order_by('StudentId')
        return render(request, 'admin/student-table.html', {'student_data': student_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def student_delete(request, id):
    student = Student.objects.get(pk=id)
    userId = student.UserId_id
    user = User.objects.get(pk=userId)
    filesystem = FileSystemStorage()
    filesystem.delete(student.StudentImageName)
    user.delete()
    student.delete()
    return redirect('/admin/student/')


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def student_edit(request, id):
    if request.method == 'POST':
        StudentImage = request.FILES['txtimageurl']
        filesystem = FileSystemStorage()
        filename = filesystem.save(StudentImage.name, StudentImage)
        url = filesystem.url(filename)
        """ users = User.objects.all()
        for user in users:
            if user.username == request.POST['txtusername']:
                messages.warning(request,"User already exist")
                return redirect('/admin/student/add/')
        # User Creation
        # user = User.objects.create_user(request.POST['txtusername'],request.POST['txtemail'],request.POST['txtpassword'])
        # group = Group.objects.get(name="Student")
        # user.groups.add(group)
        usr.username = request.POST['txtusername']
        usr.password = request.POST['txtpassword']
        # Name split and join
        Name = request.POST['txtfullname'].split()
        if len(Name) > 1:
            user.first_name = Name[0]
            user.last_name  = " ".join(Name[1:])
        else:
            user.first_name = " ".join(Name)
         """
        fn = ""
        ln = ""
        Name = request.POST['txtfullname'].split()
        if len(Name) > 1:
            fn = Name[0]
            ln = " ".join(Name[1:])
        else:
            fn = " ".join(Name)
        std = Student.objects.get(pk=id)
        userId = std.UserId_id
        print(userId)
        usr = User.objects.all().filter(pk=userId).update(
            email=request.POST['txtemail'],
            first_name=fn,
            last_name=ln
        )
        Student.objects.all().filter(pk=id).update(
            StudentName=request.POST['txtfullname'],
            #   UserId               = user,
            # StudentUserName      = request.POST['txtusername'],
            # StudentPassword      = request.POST['txtpassword'],
            DepartmentName_id=request.POST['dropdowndepartment'],
            SubDepartmentName_id=request.POST['dropdownsubdepartment'],
            StudentImageName=filename,
            StudentImage=url,
            StudentGender=request.POST.get('gender', 'Male'),
            StudentPhoneNumber=request.POST['txtphoneno'],
            StudentEmail=request.POST['txtemail'],
            StudentAddress=request.POST['txtaddress'],
            StudentCity=request.POST['txtcityname']
        )
        # std.update()
        return redirect('/admin/student/')
    else:
        student_data = Student.objects.filter(pk=id)
        department_data = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'admin/student-edit.html', {'id': id, 'student_data': student_data, 'department_data': department_data, 'subdepartment_data': subdepartment_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def student_view(request, id):
    student_data = Student.objects.filter(pk=id)
    return render(request, 'admin/student-view.html', {'id': id, 'student_data': student_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def student_update_approval_yes(request, id):
    Student.objects.filter(pk=id).update(StudentStatus=True)
    return redirect('/admin/student/')


@authentication_check
@user_authentication(allowed_users=['superAdmin', 'subAdmin'])
def student_update_approval_no(request, id):
    Student.objects.filter(pk=id).update(StudentStatus=False)
    return redirect('/admin/student/')


