# Generated by Django 3.2.7 on 2022-02-07 18:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0006_auto_20220207_1555'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Banner',
        ),
        migrations.AddField(
            model_name='category',
            name='info',
            field=models.TextField(null=True, verbose_name='Informacion de categoria'),
        ),
    ]