from django.db import models

# Create your models here.
class Department(models.Model):
    DepartmentName     = models.CharField(max_length = 150, primary_key=True)

class SubDepartment(models.Model):
    SubDepartmentName   = models.CharField(max_length = 150, primary_key=True)
    DepartmentName      = models.ForeignKey(Department, on_delete=models.CASCADE)
