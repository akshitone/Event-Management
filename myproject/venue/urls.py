from django.urls import path
from . import views

urlpatterns = [
    path('admin/venue/add/', views.venue_add, name='venue-add'),
    path('admin/venue/', views.venue_table, name='venue-table'),
    # path('admin/employee/delete/<int:id>/', views.employee_delete, name='employee-delete'),
    # path('admin/employee/edit/<int:id>/', views.employee_edit, name='employee-edit'),
]