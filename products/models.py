from django.db import models

# Create your models here.


class Certification(models.Model):

    name = models.CharField(
        max_length = 150,
        verbose_name='Certificacion',
    )
    image = models.ImageField(
        blank = True,
        null=True,
        upload_to = 'certifications'
    )

    def __str__(self):
        return self.name


class Category(models.Model):

    name = models.CharField(
        max_length = 150,
        verbose_name = 'Categoria',
    )

    image = models.ImageField(
        upload_to='categories',
        blank = True,
        null=True,
        verbose_name='Image',
    )

    created = models.DateTimeField(
        auto_now_add=True,
        verbose_name='Create at',
    )
    updated = models.DateField(
        auto_now=True,
        verbose_name='Update at',
    )

    def __str__(self):
        return self.name


class Product(models.Model):

    name = models.CharField(
        max_length=100,
        verbose_name='Nombre',
    )

    url = models.CharField(
        max_length=100,
        verbose_name='Url',
    )

    category = models.ManyToManyField(
        Category,
        blank = True,
        verbose_name = 'Categoria',
    )

    brand = models.CharField(
        max_length=100,
        verbose_name='Marca',
    )

    description = models.TextField(
        verbose_name='Descripcion',
    )

    materials = models.TextField(
        verbose_name='Materiales',
    )

    colors = models.ImageField(
        upload_to='colors',
        null=True,
        blank= True,
        verbose_name='Colores',
    )

    certifications = models.ManyToManyField(
        Certification,
        blank=True,
        verbose_name='Certificaciones'
    )

    image = models.ImageField(
        upload_to='products',
        null=True,
        blank=True,
        verbose_name='Detail Image',
    )

    image1 = models.ImageField(
        upload_to='products',
        null=True,
        blank=True,
        verbose_name='Home Space Image',
    )

    image2 = models.ImageField(
        upload_to='products',
        null=True,
        blank=True,
        verbose_name='Home Image',
    )

    created = models.DateTimeField(
        auto_now_add=True,
        verbose_name='Create at',
    )

    updated = models.DateField(
        auto_now=True,
        verbose_name='Update at',
    )

    class Meta:
        ordering = ['name']
    
    def __str__(self):
        return self.name