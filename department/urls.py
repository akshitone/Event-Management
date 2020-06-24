from django.urls import path
from . import views

urlpatterns = [
    path(
        'admin/department/delete/',
        views.department_delete,
        name='department-delete'
    ),
    path('admin/department/add/', views.department_add, name='department-add'),
    path(
        'admin/department/check_department',
        views.department_exists,
        name='department-check'
    ),
    path('admin/department/', views.department_table, name='department-table'),
    path(
        'admin/subdepartment/edit/<str:name>',
        views.subdepartment_edit,
        name='subdepartment-edit'
    ),
    path(
        'admin/subdepartment/delete',
        views.subdepartment_delete,
        name='subdepartment-delete'
    ),
    path(
        'admin/subdepartment/add/',
        views.subdepartment_add,
        name='subdepartment-add'
    ),
    path(
        'admin/subdepartment/check_subdepartment',
        views.subdepartment_exists,
        name='subdepartment-check'
    ),
    path(
        'admin/subdepartment/',
        views.subdepartment_table,
        name='subdepartment-table'
    ),
]
