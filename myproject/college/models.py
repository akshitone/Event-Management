from __future__ import unicode_literals
from django.db import models

# Create your models here.
class Temp(models.Model):
    CollegeId       = models.AutoField(primary_key=True)
    CollegeName     = models.CharField(max_length = 150)
    City            = models.CharField(max_length = 150)
    CollegeType     = models.CharField(max_length = 150)

class College(models.Model):
    CollegeId       = models.AutoField(primary_key=True)
    CollegeName     = models.CharField(max_length = 150)
    City            = models.CharField(max_length = 150)
    CollegeType     = models.CharField(max_length = 150)
    