from django.contrib import admin
from django.urls import path
from django.conf.urls import include
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('', include('main.urls')),
    path('', include('department.urls')),
    path('', include('employee.urls')),
    path('', include('achievement.urls')),
    path('', include('club.urls')),
    path('', include('event.urls')),
    path('', include('student.urls')),
    path('', include('venue.urls')),
    path('superadmin/', admin.site.urls),
]

urlpatterns = urlpatterns + \
    static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
