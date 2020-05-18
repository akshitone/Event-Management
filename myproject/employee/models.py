from django.db import models
from department.models import Department, SubDepartment

# Create your models here.
class Employee(models.Model):
    EmployeeId             = models.AutoField(primary_key=True)
    EmployeeName           = models.CharField(max_length = 150)
    EmployeeUserName       = models.CharField(max_length = 150)
    EmployeePassword       = models.CharField(max_length = 150)
    DepartmentName         = models.ForeignKey(Department, on_delete=models.CASCADE)
    SubDepartmentName      = models.ForeignKey(SubDepartment, on_delete=models.CASCADE)
    Gender                 = models.CharField(max_length = 10, null=False, blank=False)
    EmployeeImageName      = models.TextField(null=True, blank=True)
    EmployeeImage          = models.ImageField(upload_to='images', null=True, blank=True)
    EmployeePhone          = models.CharField(max_length = 150)
    EmployeeEmail          = models.EmailField(max_length = 150, null=True, blank=True)
    EmployeeAddress        = models.TextField()
    EmployeeCity           = models.CharField(max_length = 150, null=False, blank=False)
    EmployeeStatus         = models.BooleanField(default=False)