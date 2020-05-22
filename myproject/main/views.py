from django.shortcuts import render, get_object_or_404, redirect
from club.models import Club
from mainadmin.models import MainAdmin

# Create your views here.
def home(request):
    club_data = Club.objects.all()
    return render(request, 'client/home.html', {'club_data': club_data})

def registration(request):
    return render(request, 'client/registration-form.html')

def venue(request):
    del request.session['AdminUserName']
    return render(request, 'client/venue.html')

def club(request):
    club_data = Club.objects.all()
    return render(request, 'client/club.html', {'club_data': club_data})


#admin side
def dashboard(request):
    if request.session.get('AdminUserName'):
        return render(request, 'admin/dashboard.html')
    else:
        return redirect('/login/')

def admin_login(request):
    if request.method == 'POST':
        AdminUserName = request.POST['username']
        AdminPassword = request.POST['userpassword']
        admin = MainAdmin.objects.filter(AdminUserName = AdminUserName, AdminPassword = AdminPassword).exists()
        if admin:
            request.session['AdminUserName'] = MainAdmin.objects.get(AdminUserName = AdminUserName)
            print("----------------------------------")
            print(request.session['AdminUserName'])
            print(request.session['AdminUserName'].AdminType)
            print(request.session['AdminUserName'].EmployeeId)
            print(request.session['AdminUserName'].EmployeeId.EmployeeName)
            print(request.session['AdminUserName'].EmployeeId.EmployeeImageName)
            print(request.session['AdminUserName'].EmployeeId.EmployeeImage)
            print(request.session['AdminUserName'].EmployeeId.EmployeeCity)
            print(request.session['AdminUserName'].EmployeeId.Gender)
            return redirect('/admin/')  
            print("----------------------------------")
            #del request.session['AdminUserName']
        else:
            return redirect('/login/')
    return render(request, 'admin/login-page.html')