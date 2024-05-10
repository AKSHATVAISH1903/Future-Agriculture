from django.shortcuts import render,redirect
from .models import *
from account.models import *
from .forms import *
import numpy as np
from PIL import Image
from tensorflow.keras.models import load_model
# Create your views here.
 
from django.http import HttpResponse

def home(request):
    return render(request,"index.html")

def index(request):
    return redirect("/")
# def profile(request):
#     user_info = request.session.get('user_info', {})
#     email1=user_info.get('email')
#     print(email1)
#     sell1=selling.objects.filter(email='shri@gmail.com').all()
#     return render(request,"profile.html",{'sell1':sell1})

def profile(request):
    # Retrieve the user information from the session
    

    # Filter the Selling objects based on the user's email
    sell_objects =selling.objects.filter(email=request.user.email).all()

    counsel_objects =counsel.objects.filter(email=request.user.email).all()

    return render(request, "profile.html", {'sell1': sell_objects,'counsel':counsel_objects})

def show(request,id):
    sell1=selling.objects.filter(product=id).all()
    return render(request,"show.html",{"sell1":sell1,"id":id})

def sell(request):
    if request.method=="POST":
        img=request.FILES['filename']
        product=request.POST['product']
        productdet=request.POST['productdet']
        quantity=request.POST['quantity']
        price=request.POST['price']
        phone=request.POST['Phone']
        email=request.POST['email']
        username=request.POST['username']
        seller1=selling(username=username,img=img,product=product,productdet=productdet,quantity=quantity,price=price,email=email,phone=phone)
        seller1.save()
        return render(request,"sell.html")

    return render(request,"sell.html")


def plant(request):
     if request.method=="POST":
         return 
     return render(request,"plant-disease-detection.html")
def plant1(request):
     if request.method=="POST":
         return 
     return redirect("/plant-disease-detection.html")

def about(request):
    return render(request,"about.html")

def about1(request):
    return redirect("/about.html")

def daily_news(request):
    return render(request,"daily_news.html")

def daily_news1(request):
    return redirect("/daily_news.html")

def weather(request):
    return render(request,"weather.html")
def weather1(request):
    return redirect("/weather.html")

def product(request):
    items=item.objects.all()
    return render(request,"products.html",{"items":items})
def product1(request):
   return redirect("/products.html")
def blog(request):
    return render(request,"blog.html")
def login(request):
    return render(request,"login.html")

def counsell(request):
     if request.method == 'POST':
        form = CounselForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect("/")  # Redirect to a success page
     else:
        form = CounselForm(user=request.user)
     return render(request, 'counselling.html', {'form': form})

def counsell1(request):
    return redirect("/counselling.html")

def feedback1(request):
    if request.method=="POST":
        form=FeedbackForm(request.POST)
        if form.is_valid():
                form.save()
                return redirect("/")
    form = FeedbackForm(user=request.user)
    return render(request, 'counselling.html', {'form': form})    


# def index(request):
#     return render(request,"index.html")

# plant

def preprocess_image(input_image):
    # Implement the necessary pre-processing steps based on your model requirements
    image = Image.open(input_image)
    # Resize, normalize, etc.
    resized_image = image.resize((224, 224))
    # Convert the image to a NumPy array
    processed_image = np.array(resized_image) / 255.0  # Normalize to [0, 1]

    return processed_image

def interpret_prediction(prediction):
    # Implement the interpretation logic based on your model's output format
    # Example: Convert class probabilities to a human-readable result
    class_index = np.argmax(prediction)
    
    # dataset_dir = 'C:\\Users\\shris\\Dropbox\\PC\\Downloads\\New Plant Diseases Dataset(Augmented) - Copy\\New Plant Diseases Dataset(Augmented)\\train'

# Get the folder (class) names from the dataset directory
    # classes = [class_name for class_name in os.listdir(dataset_dir) if os.path.isdir(os.path.join(dataset_dir, class_name))]
    classes=['Apple___Apple_scab', 'Apple___Black_rot', 'Apple___Cedar_apple_rust', 'Apple___healthy', 'Blueberry___healthy', 'Cherry_(including_sour)___Powdery_mildew', 'Cherry_(including_sour)___healthy', 'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot', 'Corn_(maize)___Common_rust_', 'Corn_(maize)___Northern_Leaf_Blight', 'Corn_(maize)___healthy', 'Grape___Black_rot', 'Grape___Esca_(Black_Measles)',  'Grape___Leaf_blight_(Isariopsis_Leaf_Spot)', 'Grape___healthy','Orange___Haunglongbing_(Citrus_greening)', 'Peach___Bacterial_spot', 'Peach___healthy', 'Pepper,_bell___Bacterial_spot', 'Pepper,_bell___healthy', 'Potato___Early_blight',  'Potato___Late_blight','Potato___healthy', 'Raspberry___healthy', 'Soybean___healthy', 'Squash___Powdery_mildew', 'Strawberry___Leaf_scorch','Strawberry___healthy',  'Tomato___Bacterial_spot', 'Tomato___Early_blight', 'Tomato___Late_blight','Tomato___Leaf_Mold' , 'Tomato___Septoria_leaf_spot', 'Tomato___Spider_mites Two-spotted_spider_mite','Tomato___Target_Spot', 'Tomato___Tomato_Yellow_Leaf_Curl_Virus', 'Tomato___Tomato_mosaic_virus', 'Tomato___healthy' ]
    result = classes[class_index]
    return result


def disease_prediction_view(request):
    # Assuming you get input data from the user via a form
    if request.method == 'POST':
        # Get the input image file from the request
        input_image = request.FILES['image']

        # Perform some pre-processing on the image (resize, normalize, etc.)
        processed_image = preprocess_image(input_image)

        # Make predictions using the loaded model
        model = load_model('plant_disease_model.h5')
        prediction = model.predict(np.expand_dims(processed_image, axis=0))[0]

        # Convert the prediction to a human-readable result (adjust as needed)
        result1 = interpret_prediction(prediction)
        result=PlantResult.objects.filter(name=result1).all()
        print(result)
        return render(request, 'result.html', {'result1':result1,'result': result})

    return render(request, 'plant-disease-detection.html')

def feedback1(request):
    Full_Name=request.POST["Full Name"]
    Email=request.POST["Email"]
    Phone_Number=request.POST["Phone Number"]
    message=request.POST["message"]
    page=request.POST["page"]
    contact=feedback(first_name=Full_Name,email=Email,phone=Phone_Number,message=message)
    contact.save()
    print(page)
    return render(request,page+".html")

def news(request):
    Email=request.POST["Email"]
    page=request.POST["page"]
    email1=newsletter(email=Email)
    email1.save()
    return render(request,page+".html")

def counselling(request):
    firstname=request.POST["firstname"]
    lastname=request.POST["lastname"]
    Email=request.POST["mail"]
    Phone_Number=request.POST["Phone"]
    address=request.POST["local address"]
    state=request.POST["state"]
    postal=request.POST["postal code"]
    contact=feedback(first_name=firstname,email=Email,phone=Phone_Number,local_address=address,state=state,postal_code=postal,last_name=lastname)
    contact.save()
    return render(request,"contact.html")
