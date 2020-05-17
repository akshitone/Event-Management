from django.shortcuts import redirect, render
from .models import College

# Create your views here.
def college_add(request):
    if request.method == 'POST':
        college = College (
            CollegeName     = request.POST['txtcollegename'],  
            City            = request.POST['txtcityname'],  
            CollegeType     = request.POST['txtcollegetype']  
        )
        college.save()
        return redirect('/college/add/')
    else:
        return render(request, 'admin/college-add.html')

def college_table(request):
    college_data = College.objects.all()
    return render(request, 'admin/college-table.html', {'college_data': college_data})