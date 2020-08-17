from django.urls import path
from django.contrib.auth import views as auth_views
from . import views
from student.views import (
    student_update_approval_no,
    student_update_approval_yes
)

urlpatterns = [
    path('', views.home, name='home'),
    path('student/form/', views.registration, name='registration'),
    path('student/form/check_user', views.user_exists, name='user-check'),
    path('venue/', views.venue, name='venue'),
    path('admin/', views.dashboard, name='dashboard'),
    path('subadmin/', views.sub_admin_dashboard, name='subadmindashboard'),
    path('club/', views.club, name='club'),
    path('clubadmin/', views.club_dashboard, name='clubdashboard'),
    path('admin/request-read/<int:id>', views.request_read, name='request-read'),
    path('admin/member-request-read/<int:id>',
         views.member_request_read, name='member-request-read'),
    path('admin/requests/', views.requests, name='requests'),
    path('clubadmin/profileview/<int:id>',
         views.club_profile_view, name='profile-view'),
    path('event/<int:id>/', views.event, name='event'),
    path('event/view/<int:id>/', views.event_view, name='event-view-page'),
    path('club/form/', views.clubform, name='clubform'),
    path('eventRegister/', views.eventRegister, name='eventRegister'),
    path('login/', views.loginView, name='login'),
    path('logout/', views.logoutView, name="logout"),
    path('club/view/<str:name>/', views.club_single_view, name='club-single-view'),
    path('event/', views.event, name='event'),
    path('contactus/', views.contactus, name='contactus'),
    path('who-we-are/', views.whoweare, name='whoweare'),
    path('club/form/', views.clubform, name='clubform'),
    path('admin/login/', views.adminLogin, name='adminlogin'),
    path('admin/notification/', views.notification, name='notification'),
    path('clubmember/add/<str:name>', views.clubmember_add, name='clubmember_add'),
    path('eventmember/add/<int:id>', views.eventmember_add, name='eventmember_add'),
    path('resetpassword/', auth_views.PasswordResetView.as_view(
        template_name="client/password_reset.html"), name='reset_password'),
    path('resetpasswordsent/', auth_views.PasswordResetDoneView.as_view(
        template_name="client/password_reset_done.html"), name='password_reset_done'),
    path('resetpassword/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(
        template_name="client/password_reset_confirm.html"), name='password_reset_confirm'),
    path('resetpasswordcomplete/', auth_views.PasswordResetCompleteView.as_view(
        template_name="client/password_reset_complete.html"), name='password_reset_complete'),
    path('changepassword/', views.changePassword, name="password_change"),
]
