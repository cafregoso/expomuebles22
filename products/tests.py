from django.test import TestCase
from .models import Category, Certification, Product

# Create your tests here.

class CategoryModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        Category.objects.create(name='category', image=None)

    def test_name_content(self):
        cat = Category.objects.get(id=1)
        expected_name = f'{cat.name}'
        self.assertEqual(expected_name, 'category')
    
    def test_image_content(self):
        cat = Category.objects.get(id=1)
        expected_image = f'{cat.image}'
        self.assertEqual(expected_image, '')


class CertificationModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        Certification.objects.create(name='certification', image=None)

    def test_name_content(self):
        cer = Certification.objects.get(id=1)
        expected_name = f'{cer.name}'
        self.assertEqual(expected_name, 'certification')
    
    def test_image_content(self):
        cer = Certification.objects.get(id=1)
        expected_image = f'{cer.image}'
        self.assertEqual(expected_image, '')


class ProductModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        Product.objects.create(
            name='Product',
            url='product',
            brand='brand',
            description='description',
            materials='materials',
            colors=None,
            image=None,
            image1=None,
            image2=None,
        )

    def test_name_content(self):
        product = Product.objects.get(id=1)
        expected_name = f'{product.name}'
        self.assertEqual(expected_name, 'Product')

    def test_url_content(self):
        product = Product.objects.get(id=1)
        expected_url = f'{product.url}'
        self.assertEqual(expected_url, 'product')

    # def test_category_content(self):
    #     product = Product.objects.get(id=1)
    #     expected_category = f'{product.category}'
    #     self.assertEqual(expected_category, 'category')

    def test_brand_content(self):
        product = Product.objects.get(id=1)
        expected_brand = f'{product.brand}'
        self.assertEqual(expected_brand, 'brand')

    def test_description_content(self):
        product = Product.objects.get(id=1)
        expected_description = f'{product.description}'
        self.assertEqual(expected_description, 'description')

    def test_materials_content(self):
        product = Product.objects.get(id=1)
        expected_materials = f'{product.materials}'
        self.assertEqual(expected_materials, 'materials')
    
    def test_colors_content(self):
        product = Product.objects.get(id=1)
        expected_colors = f'{product.colors}'
        self.assertEqual(expected_colors, '')
        
    # def test_certifications_content(self):
    #     product = Product.objects.get(id=1)
    #     expected_certifications = f'{product.certifications}'
    #     self.assertEqual(expected_certifications, '')

    def test_image_content(self):
        product = Product.objects.get(id=1)
        expected_image = f'{product.image}'
        self.assertEqual(expected_image, '')

    def test_image1_content(self):
        product = Product.objects.get(id=1)
        expected_image1 = f'{product.image1}'
        self.assertEqual(expected_image1, '')

    def test_image2_content(self):
        product = Product.objects.get(id=1)
        expected_image2 = f'{product.image2}'
        self.assertEqual(expected_image2, '')