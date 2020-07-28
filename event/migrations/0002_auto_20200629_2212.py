# Generated by Django 3.0.6 on 2020-06-29 16:42

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('event', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='EventEndTime',
            field=models.TimeField(default=datetime.datetime(2020, 6, 29, 16, 42, 19, 307123, tzinfo=utc)),
        ),
        migrations.AlterField(
            model_name='event',
            name='EventStartTime',
            field=models.TimeField(default=datetime.datetime(2020, 6, 29, 16, 42, 19, 307123, tzinfo=utc)),
        ),
    ]
