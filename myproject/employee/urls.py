from django.urls import path
from . import views

urlpatterns = [
    path('admin/employee/add/', views.employee_add, name='employee-add'),
    path('admin/employee/', views.employee_table, name='employee-table'),
    path('admin/employee/delete/<int:id>/', views.employee_delete, name='employee-delete'),
    path('admin/employee/edit/<int:id>/', views.employee_edit, name='employee-edit'),
]