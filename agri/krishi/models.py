from django.db import models

# Create your models here.
class item(models.Model):
    img=models.ImageField(upload_to='pics')
    name=models.CharField(max_length=100)
    show=models.BooleanField(default=False)

class selling(models.Model):
    username=models.CharField(max_length=100,default="unknown")
    img=models.ImageField(upload_to='sellimg')
    product=models.CharField(max_length=100)
    productdet=models.CharField(max_length=100)
    quantity=models.CharField(max_length=100)
    price=models.IntegerField()
    phone=models.CharField(max_length=100)
    email=models.EmailField()
    
class PlantResult(models.Model):
    name=models.CharField(max_length=100,default=None)
    name2=models.CharField(max_length=100,default=None)
    cause=models.TextField(default=None)
    symptoms=models.TextField(default=None)
    life_cycle=models.TextField(default=None)
    prevention_and_control=models.TextField(default=None)
    
class feedback(models.Model):
    message=models.TextField()
    first_name=models.CharField(max_length=100)
    phone=models.CharField(max_length=100)
    email=models.EmailField()

class counsel(models.Model):
    # token=models.BigAutoField()
    first_name=models.CharField(max_length=100)
    # last_name=models.CharField(max_length=100)
    state=models.CharField(max_length=100)
    phone=models.CharField(max_length=10)
    postal_code=models.CharField(max_length=10)
    local_address=models.TextField()
    type=models.CharField(max_length=100,default="soil test")
    email=models.EmailField()
    date=models.DateField(default=None)
    

class newsletter(models.Model):
    email=models.EmailField()

class UploadedImage(models.Model):
    image = models.ImageField(upload_to='detection')

