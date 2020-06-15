from django.db import models
from club.models import Club
from venue.models import Venue
from django.utils import timezone
import datetime

# Create your models here.
class Event(models.Model):
    EventId             = models.AutoField(primary_key=True)
    title               = models.CharField(max_length = 150)
    


