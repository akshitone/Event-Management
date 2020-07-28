from django.urls import path
from . import views

urlpatterns = [
    path('admin/achievement/add/', views.achievement_add, name='achievement-add'),
    path('admin/achievement/', views.achievement_table, name='achievement-table'),
    path('admin/achievement/delete/<int:id>/', views.achievement_delete, name='achievement-delete'),
    path('admin/achievement/edit/<int:id>/', views.achievement_edit, name='achievement-edit'),
    path('admin/achiever/add/', views.achiever_add, name='achiever-add'),
    path('admin/achiever/', views.achiever_table, name='achiever-table'),
    path('admin/achiever/edit/<int:id>/', views.achiever_edit, name='achiever-edit'),
    path('admin/achiever/delete/<int:id>/', views.achiever_delete, name='achiever-delete'),
]