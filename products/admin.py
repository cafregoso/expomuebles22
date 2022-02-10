from django.contrib import admin
from .models import Certification, Product, Category, Webinar

# Register your models here.

class ProductAdmin(admin.ModelAdmin):

    search_fields = (
        'name',
    )

    list_filter = (
        'brand',
    )

admin.site.register(Product, ProductAdmin)
admin.site.register(Certification)
admin.site.register(Category)
admin.site.register(Webinar)