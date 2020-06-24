from django.urls import path
from . import views

urlpatterns = [
    path(
        'admin/employee/updateaprrove/<int:id>/',
        views.employee_update_approval_yes,
        name='employee-update-approval-yes'
    ),
    path(
        'admin/employee/updatenotapprove/<int:id>/',
        views.employee_update_approval_no,
        name='employee-update-approval-no'
    ),
    path(
        'admin/employee/edit/<int:id>/',
        views.employee_edit,
        name='employee-edit'
    ),
    path(
        'admin/employee/view/<int:id>/',
        views.employee_view,
        name='employee-view'
    ),
    path(
        'admin/employee/delete/',
        views.employee_delete,
        name='employee-delete'
    ),
    path(
        'admin/employee/add/',
        views.employee_add,
        name='employee-add'
    ),
    path(
        'admin/employee/check_employee',
        views.employee_exists,
        name='employee-check'
    ),
    path('admin/employee/', views.employee_table, name='employee-table'),
]
