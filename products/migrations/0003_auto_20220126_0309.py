# Generated by Django 3.2.7 on 2022-01-26 03:09

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0002_auto_20220126_0023'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='contact',
            name='created',
        ),
        migrations.RemoveField(
            model_name='contact',
            name='email',
        ),
    ]
