# Generated by Django 3.0.5 on 2020-05-18 17:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('club', '0002_auto_20200518_2257'),
    ]

    operations = [
        migrations.AlterField(
            model_name='club',
            name='ClubName',
            field=models.CharField(max_length=150, primary_key=True, serialize=False),
        ),
    ]
