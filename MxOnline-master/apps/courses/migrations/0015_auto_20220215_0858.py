# Generated by Django 2.2.6 on 2022-02-15 08:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0014_auto_20220210_1517'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='course',
            name='teacher_tell',
        ),
        migrations.AlterField(
            model_name='course',
            name='teacher',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='organizations.Teacher', verbose_name='讲师'),
        ),
    ]
