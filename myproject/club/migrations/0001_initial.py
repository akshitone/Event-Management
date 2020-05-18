# Generated by Django 3.0.5 on 2020-05-18 15:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('department', '0002_subdepartment'),
    ]

    operations = [
        migrations.CreateModel(
            name='Club',
            fields=[
                ('ClubName', models.AutoField(primary_key=True, serialize=False)),
                ('ClubType', models.CharField(max_length=150)),
                ('clubStatus', models.CharField(max_length=10)),
                ('clubApproval', models.CharField(max_length=10)),
                ('DepartmentName', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='department.Department')),
            ],
        ),
    ]
