from rest_framework import generics
from .models import Product, Category, Webinar
from .serializers import ProductSerializer, CategorySerializer, WebinarSerializer 

# Create your views here.

class CategoryList(generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer


class WebinarList(generics.ListAPIView):
    queryset = Webinar.objects.all()
    serializer_class = WebinarSerializer


class ProductCategoryList(generics.ListAPIView):
    serializer_class = ProductSerializer

    def get_queryset(self):
        category = self.kwargs['pk']
        return Product.objects.filter(category__exact=category)


class ProductDetail(generics.RetrieveAPIView):
    serializer_class = ProductSerializer

    def get_queryset(self):
        return Product.objects.all()