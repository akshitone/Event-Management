from django.shortcuts import redirect, render
from .models import Department, SubDepartment
from myproject.customDecorators import *
from django.http import JsonResponse
from django.core import serializers

# Create your views here.
@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def department_add(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                department = Department(
                    DepartmentName=request.POST['txtdepartmentname']
                )
                department.save()
            except:
                return JsonResponse({'error': 'Something Went Wrong'}, status=500)
            return JsonResponse({'msg': 'New Department Has Been Added'}, status=200)
    return render(request, 'admin/department-add.html')


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def department_exists(request):
    if request.is_ajax():
        if request.method == 'POST':
            department_name = request.POST['department_name']
            try:
                Department.objects.get(DepartmentName=department_name)
                return JsonResponse({'error': 'Department Already Exists'}, status=422)
            except:
                return JsonResponse({'msg': 'Verified'}, status=200)


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def department_table(request):
    department_data = Department.objects.all()
    return render(request, 'admin/department-table.html', {'department_data': department_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def department_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                name = request.POST['department_name']
                department = Department.objects.get(pk=name)
                department.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({}, status=500)


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def subdepartment_add(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                subdepartment = SubDepartment(
                    SubDepartmentName=request.POST['txtsubdepartmentname'],
                    DepartmentName_id=request.POST['departmentdropdown']
                )
                subdepartment.save()
            except:
                return JsonResponse({'error': 'Something Went Wrong'}, status=500)
            return JsonResponse({'msg': 'New Sub-Department Has Been Added'}, status=200)
    department_data = Department.objects.all()
    return render(request, 'admin/subdepartment-add.html', {'department_data': department_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def subdepartment_exists(request):
    if request.is_ajax():
        if request.method == 'POST':
            subdepartment_name = request.POST['subdepartment_name']
            department_name = request.POST['department_name']
            try:
                SubDepartment.objects.get(
                    SubDepartmentName=subdepartment_name, DepartmentName_id=department_name)
                return JsonResponse({'error': 'Sub-Department Already Exists'}, status=422)
            except:
                return JsonResponse({'msg': 'Verified'}, status=200)


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def subdepartment_table(request):
    subdepartment_data = SubDepartment.objects.all()
    return render(request, 'admin/subdepartment-table.html', {'subdepartment_data': subdepartment_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def subdepartment_edit(request, name):
    if request.method == 'POST':
        subdepartment = SubDepartment(
            DepartmentName_id=request.POST['departmentdropdown'],
            SubDepartmentName=request.POST['txtsubdepartmentname']
        )
        subdepartment.save()
        return redirect('/admin/subdepartment/')
    else:
        subdepartment_data = SubDepartment.objects.filter(pk=name)
        department_data = Department.objects.all()
        return render(request, 'admin/subdepartment-edit.html', {'name': name, 'subdepartment_data': subdepartment_data, 'department_data': department_data})


@authentication_check
@user_authentication(allowed_users=['superAdmin'])
def subdepartment_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                name = request.POST['subdepartment_name']
                subdepartment = SubDepartment.objects.get(pk=name)
                subdepartment.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({}, status=500)
