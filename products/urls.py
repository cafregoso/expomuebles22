from django.urls import path
from .views import CategoryList, ProductCategoryList, ProductDetail, WebinarList

urlpatterns = [
    path('', CategoryList.as_view()),
    path('<int:pk>/', ProductCategoryList.as_view()),
    path('producto/<int:pk>', ProductDetail.as_view()),
    path('webinars/', WebinarList.as_view()),
] 