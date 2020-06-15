from django.shortcuts import redirect,render
from student.models import Student
from department.models import Department, SubDepartment
from django.core.files.storage import FileSystemStorage

# Create your views here.
def student_add(request):
    if request.method == 'POST':
        EmployeeImage  = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(EmployeeImage.name, EmployeeImage)
        url            = filesystem.url(filename)
        student = Student (
            StudentName            = request.POST['txtfullname'],
            StudentUserName        = request.POST['txtusername'],
            StudentPassword        = request.POST['txtpassword'],
            DepartmentName_id      = request.POST['dropdowndepartment'],
            SubDepartmentName_id   = request.POST['dropdownsubdepartment'],
            StudentImageName       = filename,
            StudentImage           = url,
            StudentGender          = request.POST['gender'],
            StudentPhoneNumber     = request.POST['txtphoneno'],
            StudentEmail           = request.POST['txtemail'],
            StudentAddress         = request.POST['txtaddress'],
            StudentCity            = request.POST['txtcityname']
        )
        student.save()
        return redirect('/admin/student/add/')
    else:
        department_data = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'admin/student-add.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})

def student_table(request):
    student_data = Student.objects.all()
    return render(request, 'admin/student-table.html', {'student_data': student_data})

def student_delete(request, id):
    student       = Student.objects.get(pk = id)
    filesystem     = FileSystemStorage()
    filesystem.delete(student.StudentImageName)
    student.delete()
    return redirect('/admin/student/')

def student_edit(request, id):
    if request.method == 'POST':
        StudentImage  = request.FILES['txtimageurl']
        filesystem     = FileSystemStorage()
        filename       = filesystem.save(StudentImage.name, StudentImage)

        std = Student.objects.get(pk = id)
        filesystem     = FileSystemStorage()
        filesystem.delete(std.StudentImageName)

        url            = filesystem.url(filename)
        student = Student (
            StudentId              = request.POST['txtemployeeid'],
            StudentName            = request.POST['txtfullname'],
            StudentUserName        = request.POST['txtusername'],
            StudentPassword        = request.POST['txtpassword'],
            DepartmentName_id      = request.POST['dropdowndepartment'],
            SubDepartmentName_id   = request.POST['dropdownsubdepartment'],
            StudentImageName       = filename,
            StudentImage           = url,
            StudentGender          = request.POST['gender'],
            StudentPhoneNumber     = request.POST['txtphoneno'],
            StudentEmail           = request.POST['txtemail'],
            StudentAddress         = request.POST['txtaddress'],
            StudentCity            = request.POST['txtcityname']
        )
        student.save()
        return redirect('/admin/student/')
    else:
        student_data       = Student.objects.filter(pk = id)
        department_data     = Department.objects.all()
        subdepartment_data  = SubDepartment.objects.all()
        return render(request, 'admin/student-edit.html', {'id': id, 'student_data': student_data, 'department_data': department_data, 'subdepartment_data': subdepartment_data})