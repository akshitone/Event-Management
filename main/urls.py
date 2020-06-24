from django.urls import path
from . import views
from student.views import (
    student_update_approval_no,
    student_update_approval_yes
)

urlpatterns = [
    path('', views.home, name='home'),
    path('student/form/', views.registration, name='registration'),
    path('venue/', views.venue, name='venue'),
    path('admin/', views.dashboard, name='dashboard'),
    path('subadmin/', views.sub_admin_dashboard, name='subadmindashboard'),
    path('club/', views.club, name='club'),
    path('clubadmin/<str:clubName>', views.club_dashboard, name='clubdashboard'),
    path('event/<int:id>/', views.event, name='event'),
    path('event/view/<int:id>/', views.event_view, name='event-view'),
    path('club/form/', views.clubform, name='clubform'),
    path('eventRegister/', views.eventRegister, name='eventRegister'),
    path('login/', views.loginView, name='login'),
    path('logout/',views.logoutView, name="logout"),
    path('club/view/<str:name>/', views.club_single_view, name='club-single-view'),
    path('event/', views.event, name='event'),
    path('contactus/', views.contactus, name='contactus'),
    path('event/view/<int:id>/', views.event_view, name='event-view'),
    path('club/form/', views.clubform, name='clubform'),
    path('admin/login/', views.adminLogin, name='adminlogin'),
    path('admin/notification/', views.notification, name='notification'),
]