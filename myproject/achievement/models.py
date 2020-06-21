from django.db import models
from department.models import Department, SubDepartment
from student.models import Student

# Create your models here.
class Achievement(models.Model):
    AchievementName        = models.CharField(max_length = 150)
    DepartmentName         = models.ForeignKey(Department, on_delete=models.CASCADE)
    SubDepartmentName      = models.ForeignKey(SubDepartment, on_delete=models.CASCADE)
    AchievementDescription = models.TextField()

class Achiever(models.Model):
    AchievementId       = models.ForeignKey(Achievement, on_delete=models.CASCADE)
    StudentId           = models.ForeignKey(Student, on_delete=models.CASCADE)
    