# Generated by Django 3.0.5 on 2020-05-18 08:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('employee', '0003_auto_20200518_1328'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='EmployeeImage',
            field=models.ImageField(blank=True, null=True, upload_to='images'),
        ),
    ]