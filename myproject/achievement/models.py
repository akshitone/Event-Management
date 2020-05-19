from django.db import models
from department.models import Department, SubDepartment

# Create your models here.
class Achievement(models.Model):
    AchievementId          = models.AutoField(primary_key=True)
    AchievementName        = models.CharField(max_length = 150)
    DepartmentName         = models.ForeignKey(Department, on_delete=models.CASCADE)
    SubDepartmentName      = models.ForeignKey(SubDepartment, on_delete=models.CASCADE)
    AchievementDescription  = models.TextField()
    