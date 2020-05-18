from django.urls import path
from . import views

urlpatterns = [
    path('admin/employee/add/', views.employee_add, name='employee-add'),
    path('admin/employee/', views.employee_table, name='employee-table')
]