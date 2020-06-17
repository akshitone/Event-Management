from django.urls import path
from . import views

urlpatterns = [
    path('admin/club/add/', views.club_add, name='club-add'),
    path('admin/club/', views.club_table, name='club-table'),
    path('admin/club/delete/<str:name>/', views.club_delete, name='club-delete'),
    path('admin/club/edit/<str:name>/', views.club_edit, name='club-edit'),
    path('admin/club/view/<str:name>/', views.club_view, name='club-view'),
    path('admin/club/updateactive/<str:name>/', views.club_update_active, name='club-update-active'),
    path('admin/club/updatenotactive/<str:name>/', views.club_update_notactive, name='club-update-notactive'),
    path('admin/club/updateaprrove/<str:name>/', views.club_update_approval_yes, name='club-update-approval-yes'),
    path('admin/club/updatenotapprove/<str:name>/', views.club_update_approval_no, name='club-update-approval-no'),
    path('admin/clubmember/add/', views.clubmember_add, name='clubmember-add'),
    path('admin/clubmember/', views.clubmember_table, name='clubmember-table'),
]