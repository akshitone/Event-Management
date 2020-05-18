from django.shortcuts import redirect, render
from .models import Employee
from department.models import Department, SubDepartment
from django.core.files.storage import FileSystemStorage

# Create your views here.
def employee_add(request):
    if request.method == 'POST':
        EmployeeImage  = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(EmployeeImage.name, EmployeeImage)
        url            = filesystem.url(filename)
        employee = Employee (
            EmployeeName            = request.POST['txtfullname'],
            EmployeeUserName        = request.POST['txtusername'],
            EmployeePassword        = request.POST['txtpassword'],
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
        return redirect('/admin/employee/add/')
    else:
        department_data = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'admin/employee-add.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})

def employee_table(request):
    employee_data = Employee.objects.all()
    return render(request, 'admin/employee-table.html', {'employee_data': employee_data})

def employee_delete(request, id):
    employee       = Employee.objects.get(pk = id)
    filesystem     = FileSystemStorage()
    filesystem.delete(employee.EmployeeImageName)
    employee.delete()
    return redirect('/admin/employee/')

def employee_edit(request, id):
    if request.method == 'POST':
        EmployeeImage  = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(EmployeeImage.name, EmployeeImage)

        emp = Employee.objects.get(pk = id)
        filesystem     = FileSystemStorage()
        filesystem.delete(emp.EmployeeImageName)

        url            = filesystem.url(filename)
        employee = Employee (
            EmployeeId              = request.POST['txtemployeeid'],
            EmployeeName            = request.POST['txtfullname'],
            EmployeeUserName        = request.POST['txtusername'],
            EmployeePassword        = request.POST['txtpassword'],
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
    else:
        employee_data       = Employee.objects.filter(pk = id)
        department_data     = Department.objects.all()
        subdepartment_data  = SubDepartment.objects.all()
        return render(request, 'admin/employee-edit.html', {'id': id, 'employee_data': employee_data, 'department_data': department_data, 'subdepartment_data': subdepartment_data})