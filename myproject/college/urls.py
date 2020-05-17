from django.urls import path
from . import views

urlpatterns = [
    path('admin/college/add/', views.college_add, name='college-add'),
    path('admin/college/', views.college_table, name='college-table')
]