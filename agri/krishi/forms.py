from collections.abc import Mapping
import datetime
from typing import Any
from django import forms
import os
from django.conf import settings
from django.core.exceptions import ValidationError
from django.forms.utils import ErrorList
from .models import *

# Function to handle the uploaded image
def handle_uploaded_image(uploaded_image):
    # Define the directory where you want to store uploaded images
    upload_dir = os.path.join(settings.MEDIA_ROOT, 'uploaded_images')

    # Create the directory if it doesn't exist
    if not os.path.exists(upload_dir):
        os.makedirs(upload_dir)

    # Generate a unique file name for the uploaded image
    file_name = str(uploaded_image)
    while os.path.exists(os.path.join(upload_dir, file_name)):
        name, ext = os.path.splitext(file_name)
        file_name = name + '_1' + ext

    # Construct the full path to save the image
    image_path = os.path.join(upload_dir, file_name)

    # Save the uploaded image
    with open(image_path, 'wb+') as destination:
        for chunk in uploaded_image.chunks():
            destination.write(chunk)

    return image_path


class ImageUploadForm(forms.Form):
    image = forms.ImageField()


class FeedbackForm(forms.Form):
    first_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'contactus', 'placeholder': 'Enter firstname'}), disabled=True)
    phone = forms.CharField(widget=forms.TextInput(attrs={'class': 'contactus', 'placeholder': 'Enter phone'}), disabled=True)
    email = forms.CharField(widget=forms.TextInput(attrs={'class': 'contactus', 'placeholder': 'Enter email'}))
    message = forms.CharField(widget=forms.Textarea(attrs={'class': 'contactus1', 'placeholder': 'Enter message'}))

    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        initial_values = {
            'first_name': user.username if user and user.is_authenticated else '',
            'phone': user.phone if user and user.is_authenticated else '',
            'email': user.email if user and user.is_authenticated else '',
        }
        super(FeedbackForm, self).__init__(*args, **kwargs, initial=initial_values)

        if user and user.is_authenticated:
            self.fields['first_name'].widget.attrs['disabled'] = True
            self.fields['phone'].widget.attrs['disabled'] = True


        

class CounselForm(forms.ModelForm):
    class Meta:
        model = counsel
        fields = ['first_name', 'state', 'phone', 'postal_code', 'local_address', 'type', 'email', 'date']

# Add placeholders to other fields as needed

    type = forms.ChoiceField(choices=[
        ('soil_test', 'Soil Test'),
        ('other_type', 'Other Type'),
        # Add more options as needed
    ], widget=forms.Select(attrs={'class': 'input1', 'placeholder': 'Enter name'}))

    first_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'input1', 'placeholder': 'Enter name'}))
    state = forms.CharField(widget=forms.TextInput(attrs={'class': 'input1', 'placeholder': 'Enter state'}))
    phone = forms.CharField(widget=forms.TextInput(attrs={'class': 'input1', 'placeholder': 'Enter phone'}))
    postal_code = forms.CharField(widget=forms.TextInput(attrs={'class': 'input1', 'placeholder': 'Enter postal code'}))
    local_address = forms.CharField(widget=forms.Textarea(attrs={'class': 'input1', 'placeholder': 'Enter local address'}))
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class': 'input1', 'placeholder': 'Enter email'}))

    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)

        # Set form field initial values directly from user attributes
        initial_values = {
            'first_name': user.username if user else '',
            'email': user.email if user else '',
        }

        super(CounselForm, self).__init__(*args, **kwargs, initial=initial_values)


    date = forms.DateField(widget=forms.DateInput(attrs={'type': 'date' ,'class':"input1"}))
    

    def clean_phone(self):
        phone = self.cleaned_data.get('phone')
        # Add your phone number validation logic here
        if not phone.isdigit() or len(phone) != 10:
            raise ValidationError("Please enter a valid 10-digit phone number.")
        return phone

    def clean_date(self):
        date = self.cleaned_data.get('date')
        # Add your date validation logic here
        if date and date < datetime.date.today():
            raise ValidationError("Please enter a date in the future.")
        return date

