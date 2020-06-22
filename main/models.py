from __future__ import unicode_literals
from django.db import models
from student.models import Student
from achievement.models import Achievement

# Create your models here.
class Notification(models.Model):
    NotificationId                 = models.AutoField(primary_key=True)
    StudentId                      = models.ForeignKey(Student, on_delete=models.CASCADE, null=True)
    AchievementId                  = models.ForeignKey(Achievement, on_delete=models.CASCADE, null=True)
    NotificationTitle              = models.TextField()
    NotificationDescription        = models.TextField()
    NotificationDateTime           = models.DateTimeField(auto_now=True)
