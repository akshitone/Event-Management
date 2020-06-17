from django.shortcuts import redirect, render
from .models import Department, SubDepartment

# Create your views here.
def department_add(request):
    if request.method == 'POST':
        department = Department (
            DepartmentName     = request.POST['txtdepartmentname']
        )
        department.save()
        return redirect('/admin/department/add/')
    else:
        return render(request, 'admin/department-add.html')

def department_table(request):
    department_data = Department.objects.all()
    return render(request, 'admin/department-table.html', {'department_data': department_data})

def department_delete(request, name):
    department       = Department.objects.get(pk = name)
    department.delete()
    return redirect('/admin/department/')

def subdepartment_add(request):
    if request.method == 'POST':
        subdepartment = SubDepartment (
            SubDepartmentName     = request.POST['txtsubdepartmentname'],
            DepartmentName_id     = request.POST['departmentdropdown']
        )
        subdepartment.save()
        return redirect('/admin/subdepartment/add/')
    else:
        department_data = Department.objects.all()
        return render(request, 'admin/subdepartment-add.html', {'department_data': department_data})

def subdepartment_table(request):
    subdepartment_data = SubDepartment.objects.all()
    return render(request, 'admin/subdepartment-table.html', {'subdepartment_data': subdepartment_data})


def subdepartment_edit(request, name):
    if request.method == 'POST':
        subdepartment = SubDepartment (
            DepartmentName_id              = request.POST['departmentdropdown'],
            SubDepartmentName              = request.POST['txtsubdepartmentname']
        )
        subdepartment.save()
        return redirect('/admin/subdepartment/')
    else:
        subdepartment_data       = SubDepartment.objects.filter(pk = name)
        department_data          = Department.objects.all()
        return render(request, 'admin/subdepartment-edit.html', {'name': name, 'subdepartment_data': subdepartment_data, 'department_data': department_data})
    
def subdepartment_delete(request, name):
    subdepartment       = SubDepartment.objects.get(pk = name)
    subdepartment.delete()
    return redirect('/admin/subdepartment/')