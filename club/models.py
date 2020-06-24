from django.db import models
from django.contrib.auth.models import User
from department.models import Department
from student.models import Student

# Create your models here.
class Club(models.Model):
    ClubName       = models.CharField(max_length = 150, primary_key=True)
    UserId         = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    ClubImageName  = models.TextField(null=True, blank=True)
    ClubImage      = models.ImageField(upload_to='images', null=True, blank=True)
    ClubType       = models.CharField(max_length = 150, null=True, blank=True)
    FacebookLink   = models.CharField(max_length = 150, null=True, blank=True)
    InstagramLink  = models.CharField(max_length = 150, null=True, blank=True)
    TwitterLink    = models.CharField(max_length = 150, null=True, blank=True)
    DribbbleLink   = models.CharField(max_length = 150, null=True, blank=True)
    DepartmentName = models.ForeignKey(Department, on_delete=models.CASCADE)
    clubStatus     = models.CharField(max_length = 10, default=False)
    clubApproval   = models.CharField(max_length = 10, default = -1)

class ClubMember(models.Model):
    ClubMemberId = models.AutoField(primary_key=True)
    ClubId       = models.ForeignKey(Club, on_delete=models.CASCADE, related_name="clubName")
    StudentId    = models.ForeignKey(Student, on_delete=models.CASCADE)
    MemberRole   = models.CharField(max_length = 150)