from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('student/form/', views.registration, name='registration'),
    path('venue/', views.venue, name='venue'),
    path('admin/', views.dashboard, name='dashboard'),
    path('club/', views.club, name='club'),
    path('club/form/', views.clubform, name='clubform'),
    path('admin/login/', views.admin_login, name='admin-login'),
]