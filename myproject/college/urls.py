from django.urls import path
from . import views

urlpatterns = [
    path('admin/college/add/', views.college_add, name='college-add'),
    path('admin/college/', views.college_table, name='college-table'),
    path('admin/college/delete/<int:id>/', views.college_delete, name='college-delete'),
]