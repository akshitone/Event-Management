from django.db import models
from club.models import Club
from venue.models import Venue
from django.utils import timezone
import datetime

# Create your models here.
class Event(models.Model):
    title               = models.CharField(max_length = 150)
    EventImageName      = models.TextField(null=True, blank=True)
    EventImage          = models.ImageField(upload_to='images', null=True, blank=True)
    ClubName            = models.ForeignKey(Club, on_delete=models.CASCADE)
    VenueId             = models.ForeignKey(Venue, on_delete=models.CASCADE)
    EventType           = models.CharField(max_length = 150)
    EventEligibility    = models.CharField(max_length = 150)
    EventStatus         = models.CharField(max_length = 10, default=False)
    EventApproval       = models.CharField(max_length = 10, default= -1)
    start               = models.DateField(auto_now=False,auto_now_add=False, default=datetime.date.today)
    end                 = models.DateField(auto_now=False,auto_now_add=False, default=datetime.date.today)
    EventStartTime      = models.TimeField(auto_now=False, auto_now_add=False, default=timezone.now())
    EventEndTime        = models.TimeField(auto_now=False, auto_now_add=False, default=timezone.now())
    EventDescription    = models.TextField()
    EventAmount         = models.IntegerField()