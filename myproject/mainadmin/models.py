from django.db import models
from employee.models import Employee

# Create your models here.
class MainAdmin(models.Model):
    AdminId = models.AutoField(primary_key=True)
    AdminUserName = models.CharField(max_length = 150)
    AdminPassword = models.CharField(max_length = 150)
    AdminType = models.CharField(max_length = 150)
    EmployeeId = models.ForeignKey(Employee, on_delete=models.CASCADE)
    Status = models.BooleanField()
    
    
    