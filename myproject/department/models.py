from django.db import models

# Create your models here.
class Department(models.Model):
    DepartmentName     = models.CharField(max_length = 150, primary_key=True)