from django.urls import path
from . import views

urlpatterns = [
    path('admin/student/add/', views.student_add, name='student-add'),
    path('admin/student/', views.student_table, name='student-table'),
    path('admin/student/edit/<int:id>/', views.student_edit, name='student-edit'),
    path('admin/student/delete/<int:id>/', views.student_delete, name='student-delete'),
]