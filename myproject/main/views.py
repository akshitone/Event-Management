from django.shortcuts import render, get_object_or_404, redirect

# Create your views here.

def home(request):
    titlename = "Home | eVentes"
    return render(request, 'client/home.html', {'titlename': titlename})

def registration(request):
    titlename = "Registration Form | eVentes"
    return render(request, 'client/registration-form.html', {'titlename': titlename})

def venue(request):
    titlename = "Venue | eVentes"
    return render(request, 'client/venue.html', {'titlename': titlename})