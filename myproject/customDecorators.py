from django.http import HttpResponse
from django.shortcuts import redirect
from django.contrib.auth.models import User, Group
from django.contrib import messages
from club.models import Club


def authentication_check(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:
            return view_func(request, *args, **kwargs)
        else:
            groups = request.user.groups.all()
            for group in groups:
                if "Student" in group.name:
                    return redirect('login')
        messages.warning(request, "Please Login to continue")
        return redirect('adminlogin')
    return wrapper_func


def admin_authentication_check(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:
            return view_func(request, *args, **kwargs)
        messages.warning(request, "Please Login to continue")
        return redirect('adminlogin')
    return wrapper_func


def client_authentication_check(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:
            if request.user.is_superuser:
                return redirect('dashboard')
            groups = request.user.groups.all()
            for group in groups:
                if "subAdmin" in group.name:
                    return redirect('subadmindashboard')
                elif "clubAdmin" in group.name:
                    return redirect('clubdashboard')
        return view_func(request, *args, **kwargs)
    return wrapper_func


def user_authentication(allowed_users=[]):
    def decorator(view_func):
        def wrapper_func(request, *args, **kwargs):
            if request.user.is_superuser:
                return view_func(request, *args, **kwargs)
            groups = []
            if request.user.groups.exists():
                groups = request.user.groups.all()
                for group in groups:
                    if group.name in allowed_users:
                        return view_func(request, *args, **kwargs)
                messages.warning(
                    request, "Not authorized! Log in as authorized user")
                return redirect("adminlogin")
            # if no groups assigned
            # else:
            #     messages.warning(request,"Not authorized! Log in as authorized user")
            #     return redirect("login")

        return wrapper_func
    return decorator


def club_authentication(view_func):
    def wrapper_func(request, *args, **kwargs):
        groups = []
        if request.user.groups.exists():
            groups = request.user.groups.all()
            for group in groups:
                if "clubAdmin" in group.name:
                    club = Club.objects.get(UserId=request.user.id)[
                        0].clubApproval
                    print(Club.objects.get(
                        UserId=request.user.id)[0].clubApproval)
                    if club.clubApproval == 1:
                        return view_func(request, *args, **kwargs)
                    else:
                        messages.warning(
                            request, "Club not approved please contact admin")
                        return redirect("adminlogin")
        messages.warning(request, "Please login from club username")
        return redirect("adminlogin")
    return wrapper_func
