from django.db import models
from department.models import Department

# Create your models here.
class Club(models.Model):
    ClubName           = models.CharField(max_length = 150, primary_key=True)
    ClubImageName      = models.TextField(null=True, blank=True)
    ClubImage          = models.ImageField(upload_to='images', null=True, blank=True)
    ClubType           = models.CharField(max_length = 150)
    DepartmentName     = models.ForeignKey(Department, on_delete=models.CASCADE)
    clubStatus         = models.CharField(max_length = 10, default=False)
    clubApproval       = models.CharField(max_length = 10, default = -1)
    