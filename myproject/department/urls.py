from django.urls import path
from . import views

urlpatterns = [
    path('admin/department/add/', views.department_add, name='department-add'),
    path('admin/department/', views.department_table, name='department-table'),
    path('admin/subdepartment/add/', views.subdepartment_add, name='subdepartment-add'),
    path('admin/subdepartment/', views.subdepartment_table, name='subdepartment-table')
]