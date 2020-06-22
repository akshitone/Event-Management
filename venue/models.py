from django.db import models

# Create your models here.
class Venue(models.Model):
    VenueId          = models.AutoField(primary_key=True)
    VenueName        = models.CharField(max_length = 150)
    VenueImageName   = models.TextField(null=True, blank=True)
    VenueImage       = models.ImageField(upload_to='images', null=True, blank=True)
    VenueLocation    = models.TextField()

