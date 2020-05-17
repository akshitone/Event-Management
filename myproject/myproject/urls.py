from django.contrib import admin
from django.urls import path
from django.conf.urls import include

urlpatterns = [
    path('admin-django/', admin.site.urls),
    path('', include('main.urls')),
    path('', include('college.urls')),
    path('', include('department.urls')),
]
