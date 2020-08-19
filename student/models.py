from django.db import models
from django.contrib.auth.models import User
from department.models import Department, SubDepartment

# Create your models here.


class Student(models.Model):
    StudentId = models.AutoField(primary_key=True)
    UserId = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    StudentName = models.CharField(max_length=150)
    """ StudentUserName    = models.CharField(max_length = 150)
    StudentPassword    = models.CharField(max_length = 150) """
    StudentPhoneNumber = models.CharField(max_length=150)
    DepartmentName = models.ForeignKey(Department, on_delete=models.CASCADE)
    SubDepartmentName = models.ForeignKey(
        SubDepartment, on_delete=models.CASCADE)
    StudentGender = models.CharField(max_length=10, null=False, blank=False)
    StudentImageName = models.TextField(null=True, blank=True)
    StudentImage = models.ImageField(upload_to='images', null=True, blank=True)
    StudentEmail = models.EmailField(max_length=150, null=True, blank=True)
    StudentAddress = models.TextField()
    StudentCity = models.CharField(max_length=150, null=False, blank=False)
    StudentStatus = models.BooleanField(default=True)
