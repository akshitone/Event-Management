from django.contrib import admin
from django.urls import path
from django.conf.urls import include
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin-django/', admin.site.urls),
    path('', include('main.urls')),
    path('', include('college.urls')),
    path('', include('department.urls')),
    path('', include('employee.urls')),
    path('', include('achievement.urls')),
    path('', include('club.urls')),
    path('', include('event.urls')),
    path('', include('student.urls')),
]

urlpatterns = urlpatterns + static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)