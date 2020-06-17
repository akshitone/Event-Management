from django.urls import path
from . import views

urlpatterns = [
    path('admin/club/add/', views.club_add, name='club-add'),
    path('admin/club/', views.club_table, name='club-table'),
    path('admin/club/delete/<str:name>/', views.club_delete, name='club-delete'),
    path('admin/club/edit/<str:name>/', views.club_edit, name='club-edit'),
    path('admin/club/active/<str:name>/', views.club_updateactive, name='club-update-active'),
    path('admin/club/notactive/<str:name>/', views.club_updatenotactive, name='club-update-not-active'),
    path('admin/clubmember/add/', views.clubmember_add, name='clubmember-add'),
    path('admin/clubmember/', views.clubmember_table, name='clubmember-table'),
]