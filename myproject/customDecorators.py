from django.http import HttpResponse
from django.shortcuts import redirect
from django.contrib.auth.models import User, Group
from django.contrib import messages


def authentication_check(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:
            return view_func(request, *args, **kwargs)
        messages.warning(request, "Please Login to continue")
        return redirect('login')

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
                return redirect("login")
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
                    return view_func(request, *args, **kwargs)
        messages.warning(request, "Please login from club username")
        return redirect("login")
    return wrapper_func
