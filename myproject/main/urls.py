from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('student/form/', views.registration, name='registration'),
    path('venue/', views.venue, name='venue'),
    path('admin/', views.dashboard, name='dashboard'),
    path('admin/subadmindashboard/', views.sub_admin_dashboard, name='subadmindashboard'),
    path('club/', views.club, name='club'),
    path('admin/clubdashboard/<str:clubName>', views.club_dashboard, name='clubdashboard'),
    path('event/<int:id>/', views.event, name='event'),
    path('event/view/<int:id>/', views.event_view, name='event-view'),
    path('club/form/', views.clubform, name='clubform'),
    path('eventRegister/', views.eventRegister, name='eventRegister'),
    path('login/', views.loginView, name='login'),
    path('logout/',views.logoutView, name="logout")
]