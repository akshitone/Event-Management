from django.shortcuts import render, get_object_or_404, redirect

# Create your views here.

def home(request):
    return render(request, 'client/home.html')

def registration(request):
    return render(request, 'client/registration-form.html')

def venue(request):
    return render(request, 'client/venue.html')


#admin side

def dashboard(request):
    return render(request, 'admin/dashboard.html')