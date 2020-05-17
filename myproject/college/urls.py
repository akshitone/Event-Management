from django.urls import path
from . import views

urlpatterns = [
    path('college/add/', views.college_add, name='college-add'),
    path('college/', views.college_table, name='college-table')
]