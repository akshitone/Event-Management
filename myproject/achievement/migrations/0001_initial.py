# Generated by Django 3.0.5 on 2020-05-18 15:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('department', '0002_subdepartment'),
    ]

    operations = [
        migrations.CreateModel(
            name='Achievement',
            fields=[
                ('AchievementId', models.AutoField(primary_key=True, serialize=False)),
                ('AchievementName', models.CharField(max_length=150)),
                ('AchievemetDescription', models.TextField()),
                ('DepartmentName', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='department.Department')),
                ('SubDepartmentName', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='department.SubDepartment')),
            ],
        ),
    ]
