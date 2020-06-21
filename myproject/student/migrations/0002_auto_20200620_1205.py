# Generated by Django 3.0.7 on 2020-06-20 06:35

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('student', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='StudentPassword',
        ),
        migrations.RemoveField(
            model_name='student',
            name='StudentUserName',
        ),
        migrations.AddField(
            model_name='student',
            name='UserId',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
