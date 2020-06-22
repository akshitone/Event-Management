from django.shortcuts import redirect, render
from .models import Employee
from department.models import Department, SubDepartment
from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.models import User, Group
from django.http import JsonResponse

# Create your views here.
def employee_add(request):
        if request.method == 'POST':
                EmployeeImage  = request.FILES['txtimageurl']
                filesystem     = FileSystemStorage()
                filename       = filesystem.save(EmployeeImage.name, EmployeeImage)
                url            = filesystem.url(filename)
                users = User.objects.all()
                for user in users:
                    print(user.username)
                    if user.username == request.POST['txtusername']:
                        messages.warning(request,"User already exist")
                        return redirect('/admin/employee/add/')
                # User Creation
                user = User.objects.create_user(request.POST['txtusername'],request.POST['txtemail'],request.POST['txtpassword'])
                # Name split and join
                Name = request.POST['txtfullname'].split()
                if len(Name) > 1:
                    user.first_name = Name[0]
                    user.last_name  = " ".join(Name[1:])
                else:
                    user.first_name = " ".join(Name)
                # print(request.POST["role"])
                role = request.POST.get("role",False)
                if role:
                    if role == "is_staff":
                        user.is_staff = True
                    elif role == "is_subAdmin":
                        group = Group.objects.get(name="subAdmin")
                        user.groups.add(group)
                user.save()
                employee = Employee (
                    EmployeeName            = request.POST['txtfullname'],
                    UserId                  = user,
                    # EmployeeUserName        = request.POST['txtusername'],
                    # EmployeePassword        = request.POST['txtpassword'],
                    DepartmentName_id       = request.POST['dropdowndepartment'],
                    SubDepartmentName_id    = request.POST['dropdownsubdepartment'],
                    EmployeeImageName       = filename,
                    EmployeeImage           = url,
                    Gender                  = request.POST['gender'],
                    EmployeePhone           = request.POST['txtphoneno'],
                    EmployeeEmail           = request.POST['txtemail'],
                    EmployeeAddress         = request.POST['txtaddress'],
                    EmployeeCity            = request.POST['txtcityname']
                )
                employee.save()
                return redirect('/admin/employee/')
            #     return JsonResponse({'error': 'Something Went Wrong'}, status=500)
                
            # return JsonResponse({'msg': 'New Employee Has Been Added'}, status=200)
        else:
            department_data =   Department.objects.all()
            subdepartment_data = SubDepartment.objects.all()
            return render(request, 'admin/employee-add.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})

def employee_exists(request):
    if request.is_ajax():
        if request.method == 'POST':
            employee_username = request.POST['employee_username']
            try:
                User.objects.get(username=employee_username)
                return JsonResponse({'error': 'Username Already Exists'}, status=422)
            except:
                return JsonResponse({'msg': 'Verified'}, status=200)

def employee_table(request):
    employee_data = Employee.objects.all()
    return render(request, 'admin/employee-table.html', {'employee_data': employee_data})

def employee_delete(request, id):
    employee = Employee.objects.get(pk = id)
    userId   = employee.UserId_id
    user     = User.objects.get(pk=userId)
    filesystem     = FileSystemStorage()
    filesystem.delete(employee.EmployeeImageName)
    user.delete()
    employee.delete()
    return redirect('/admin/employee/')

def employee_edit(request, id):
    if request.method == 'POST':
        EmployeeImage = request.FILES['txtimageurl']
        filesystem    = FileSystemStorage()
        filename      = filesystem.save(EmployeeImage.name, EmployeeImage)

        fn = ""
        ln = ""
        Name = request.POST['txtfullname'].split()
        if len(Name) > 1:
            fn = Name[0]
            ln  = " ".join(Name[1:])
        else:
            fn = " ".join(Name)
        
        emp        = Employee.objects.get(pk = id)
        userId = std.UserId_id
        print(userId)
        usr = User.objects.all().filter(pk=userId).update(
            email = request.POST['txtemail'],
            first_name = fn,
            last_name = ln
        )
        filesystem = FileSystemStorage()
        filesystem.delete(emp.EmployeeImageName)

        url = filesystem.url(filename)
        Employee.objects.all().filter(pk=id).update(
            EmployeeName            = request.POST['txtfullname'],
            DepartmentName_id       = request.POST['dropdowndepartment'],
            SubDepartmentName_id    = request.POST['dropdownsubdepartment'],
            EmployeeImageName       = filename,
            EmployeeImage           = url,
            Gender                  = request.POST['gender'],
            EmployeePhone           = request.POST['txtphoneno'],
            EmployeeEmail           = request.POST['txtemail'],
            EmployeeAddress         = request.POST['txtaddress'],
            EmployeeCity            = request.POST['txtcityname']
        )
        # employee.save()
        return redirect('/admin/employee/')
    else:
        employee_data       = Employee.objects.filter(pk = id)
        department_data     = Department.objects.all()
        subdepartment_data  = SubDepartment.objects.all()
        return render(request, 'admin/employee-edit.html', {'id': id, 'employee_data': employee_data, 'department_data': department_data, 'subdepartment_data': subdepartment_data})

def employee_view(request, id):
    employee_data = Employee.objects.filter(pk = id)
    return render(request, 'admin/employee-view.html', {'id': id, 'employee_data': employee_data})

def employee_update_approval_yes(request, id):
    Employee.objects.filter(pk = id).update(EmployeeStatus=True)
    return redirect('/admin/employee/')

def employee_update_approval_no(request, id):
    Employee.objects.filter(pk = id).update(EmployeeStatus=False)
    return redirect('/admin/employee/')