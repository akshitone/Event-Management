from django.shortcuts import render, get_object_or_404, redirect
from club.models import Club
from venue.models import Venue
from event.models import Event

# Create your views here.
def home(request):
    club_data = Club.objects.all()
    return render(request, 'client/home.html', {'club_data': club_data})

def registration(request):
    return render(request, 'client/registration-form.html')

def venue(request):
    # del request.session['AdminUserName']
    venue_data = Venue.objects.all()
    return render(request, 'client/venue.html', {'venue_data': venue_data})

def club(request):
    club_data = Club.objects.all()
    return render(request, 'client/club.html', {'club_data': club_data})

def clubform(request):
    return render(request, 'client/club-form.html')

def event(request):
    event_data = Event.objects.all()
    return render(request, 'client/event.html', {'event_data': event_data})


#admin side
def dashboard(request):
    # if request.session.get('AdminUserName'):
        return render(request, 'admin/dashboard.html')
    # else:
    #     return redirect('/login/')

def admin_login(request):
    # if request.method == 'POST':
    #     AdminUserName = request.POST['username']
    #     AdminPassword = request.POST['userpassword']
    #     admin = MainAdmin.objects.filter(AdminUserName = AdminUserName, AdminPassword = AdminPassword).exists()
    #     if admin:
    #         request.session['AdminUserName'] = request.user.username
    #         print("----------------------------------")
    #         print("----------------------------------")
    #         print(request.session['AdminUserName'])
    #         return redirect('/admin/')
    #         #del request.session['AdminUserName']
    #     else:
    #         return redirect('/login/')
    return render(request, 'admin/login-page.html')