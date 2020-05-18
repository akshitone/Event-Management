from django.shortcuts import render

# Create your views here.
def achievement_add(request):
    return render(request, 'admin/achievement-add.html')