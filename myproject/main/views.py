from django.shortcuts import render, get_object_or_404, redirect
from club.models import Club

# Create your views here.
def home(request):
    club_data = Club.objects.all()
    return render(request, 'client/home.html', {'club_data': club_data})

def registration(request):
    return render(request, 'client/registration-form.html')

def venue(request):
    return render(request, 'client/venue.html')

def club(request):
    club_data = Club.objects.all()
    return render(request, 'client/club.html', {'club_data': club_data})


#admin side
def dashboard(request):
    return render(request, 'admin/dashboard.html')

def admin_login(request):
    return render(request, 'admin/login-page.html')