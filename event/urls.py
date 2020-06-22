from django.urls import path
from . import views

urlpatterns = [
    path('admin/event/add/', views.event_add, name='event-add'),
    path('admin/event/', views.event_table, name='event-table'),
    path('admin/event/calendar/', views.calendar, name='calendar'),
    # path('admin/event/delete/<int:id>/', views.event_delete, name='event-delete'),
    # path('admin/event/edit/<int:id>/', views.event_edit, name='event-edit')
]