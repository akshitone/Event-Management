from django.urls import path
from . import views

urlpatterns = [
    path('admin/venue/edit/<int:id>/', views.venue_edit, name='venue-edit'),
    path(
        'admin/venue/delete/',
        views.venue_delete,
        name='venue-delete'
    ),
    path('admin/venue/add/', views.venue_add, name='venue-add'),
    path(
        'admin/venue/check_venue',
        views.venue_exists,
        name='venue-check'
    ),
    path('admin/venue/', views.venue_table, name='venue-table'),
]
