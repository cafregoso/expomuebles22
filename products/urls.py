from django.urls import path
from .views import CategoryList, ProductCategoryList, ProductDetail

urlpatterns = [
    path('', CategoryList.as_view()),
    path('<str:espacio>/', ProductCategoryList.as_view()),
    path('producto/<int:pk>', ProductDetail.as_view()),
]