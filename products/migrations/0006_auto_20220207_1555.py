# Generated by Django 3.2.7 on 2022-02-07 15:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0005_banner_webinar'),
    ]

    operations = [
        migrations.AddField(
            model_name='webinar',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='webinars'),
        ),
        migrations.AlterField(
            model_name='banner',
            name='info',
            field=models.TextField(verbose_name='Informacion de seccion'),
        ),
        migrations.AlterField(
            model_name='banner',
            name='name',
            field=models.CharField(max_length=150, verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='webinar',
            name='date',
            field=models.CharField(max_length=200, verbose_name='Fecha del evento'),
        ),
        migrations.AlterField(
            model_name='webinar',
            name='name',
            field=models.CharField(max_length=100, verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='webinar',
            name='theme',
            field=models.CharField(max_length=200, verbose_name='Tema'),
        ),
    ]
