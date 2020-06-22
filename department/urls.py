from django.urls import path
from . import views

urlpatterns = [
    path('admin/department/add/', views.department_add, name='department-add'),
    path('admin/department/', views.department_table, name='department-table'),
    path('admin/department/delete/<str:name>', views.department_delete, name='department-delete'),
    path('admin/subdepartment/add/', views.subdepartment_add, name='subdepartment-add'),
    path('admin/subdepartment/', views.subdepartment_table, name='subdepartment-table'),
    path('admin/subdepartment/edit/<str:name>', views.subdepartment_edit, name='subdepartment-edit'),
    path('admin/subdepartment/delete/<str:name>', views.subdepartment_delete, name='subdepartment-delete'),
]