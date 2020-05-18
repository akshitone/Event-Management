# Generated by Django 3.0.5 on 2020-05-18 15:53

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('club', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('EventId', models.AutoField(primary_key=True, serialize=False)),
                ('EventName', models.CharField(max_length=150)),
                ('EventType', models.CharField(max_length=150)),
                ('EventEligibility', models.CharField(max_length=150)),
                ('EventStatus', models.CharField(max_length=10)),
                ('EventApproval', models.CharField(max_length=10)),
                ('EventStartDate', models.CharField(max_length=150)),
                ('EventEndDate', models.CharField(max_length=150)),
                ('EventDescription', models.TextField()),
                ('EventAmount', models.IntegerField()),
                ('ClubName', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='club.Club')),
            ],
        ),
    ]
