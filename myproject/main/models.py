from __future__ import unicode_literals
from django.db import models

# Create your models here.
class Notification(models.Model):
    NotificationTitle              = models.TextField()
    NotificationName               = models.TextField()
    NotificationDescription        = models.TextField()
    NotificationDateTime           = models.DateTimeField(auto_now=True)
