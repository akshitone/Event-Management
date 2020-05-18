from django.urls import path
from . import views

urlpatterns = [
    path('admin/club/add/', views.club_add, name='club-add'),
    path('admin/club/', views.club_table, name='club-table'),
    # path('admin/club/delete/<int:id>/', views.club_delete, name='club-delete'),
    # path('admin/club/edit/<int:id>/', views.club_edit, name='club-edit')
]