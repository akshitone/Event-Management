from django.shortcuts import redirect, render
from .models import Achievement
from department.models import Department, SubDepartment

# Create your views here.
def achievement_add(request):
    if request.method == 'POST':
        achievement = Achievement (
            AchievementName         = request.POST['txtachievementname'],  
            DepartmentName_id       = request.POST['dropdowndepartment'],
            SubDepartmentName_id    = request.POST['dropdownsubdepartment'],
            AchievementDescription  = request.POST['txtdescription']
        )
        achievement.save()
        return redirect('/admin/achievement/add/')
    else:
        department_data = Department.objects.all()
        subdepartment_data = SubDepartment.objects.all()
        return render(request, 'admin/achievement-add.html', {'department_data': department_data, 'subdepartment_data': subdepartment_data})

def achievement_table(request):
    achievement_data = Achievement.objects.all()
    return render(request, 'admin/achievement-table.html', {'achievement_data': achievement_data})

def achievement_delete(request, id):
    achievement       = Achievement.objects.get(pk = id)
    achievement.delete()
    return redirect('/admin/achievement/')


def achievement_edit(request, id):
    if request.method == 'POST':
        achievement = Achievement (
            AchievementId              = request.POST['txtemployeeid'],
            AchievementName            = request.POST['txtfullname'],
            DepartmentName_id       = request.POST['dropdowndepartment'],
            SubDepartmentName_id    = request.POST['dropdownsubdepartment'],
            AchievementDescription           = request.POST['txtphoneno'],
        )
        achievement.save()
        return redirect('/admin/achievement/')
    else:
        achievement_data       = Achievement.objects.filter(pk = id)
        department_data     = Department.objects.all()
        subdepartment_data  = SubDepartment.objects.all()
        return render(request, 'admin/achievement-edit.html', {'id': id, 'achievement_data': achievement_data, 'department_data': department_data, 'subdepartment_data': subdepartment_data})