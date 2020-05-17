from django.urls import path
from . import views

urlpatterns = [
    path('admin/department/add/', views.department_add, name='department-add'),
    path('admin/department/', views.department_table, name='department-table')
]