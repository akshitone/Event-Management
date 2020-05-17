from django.shortcuts import redirect, render
from .models import Department 

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