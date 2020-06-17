from __future__ import unicode_literals
from django.db import models

# Create your models here.
class Notification(models.Model):
    NotificationId                 = models.AutoField(primary_key=True)
    NotificationTitle              = models.TextField()
    NotificationName               = models.TextField()
    NotificationDescription        = models.TextField()
    NotificationDateTime           = models.DateTimeField(auto_now=True)
