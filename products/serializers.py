from rest_framework import serializers
from .models import Certification, Category, Product

class CertificationSerializer(serializers.ModelSerializer):

    class Meta:
        model = Certification
        fields = ('id', 'name', 'image')


class CategorySerializer(serializers.ModelSerializer):

    class Meta:
        model = Category
        fields = ('id', 'name', 'image')


class ProductSerializer(serializers.ModelSerializer):
    certifications = CertificationSerializer(many=True)
    category = CategorySerializer(many=True)

    class Meta:
        model = Product
        fields = [
            'id',
            'name',
            'url', 
            'brand', 
            'description', 
            'materials', 
            'colors', 
            'certifications',
            'category',
            'image',
            'image1',
            'image2',
        ]