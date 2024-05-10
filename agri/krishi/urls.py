from django.urls import path
from . import views

urlpatterns = [
        path("", views.home ,name='home'),
        path("products.html",views.product,name="product"),
        path("show/products1",views.product1,name="product1"),
        path("about.html",views.about,name="about"),
        path("show/about1",views.about1,name="about1"),
        path("profile.html",views.profile,name="profile"),
        path("blog.html",views.blog,name="blog"),
        path("counselling.html",views.counsell,name="counsell"),
        path("show/counselling1",views.counsell1,name="counsell1"),
        path("counselling",views.counsell,name="counsell"),
        path("index.html",views.index,name="index"),
        path("feedback1",views.feedback1,name="feedback1"),
        path("news",views.news,name="news"),
        path("sell.html",views.sell,name="sell"),
        path("sell",views.sell,name="sell"),
        path("show/index.html",views.index,name="index"),
        path("show/about.html",views.about1,name="about"),
        path("show/<str:id>",views.show,name="show"),
        path("show/<str:id>",views.show,name="show"),
        # path("plant-disease-detection.html",views.plant,name="plant"),
        path('plant-disease-detection.html', views.disease_prediction_view, name='disease_prediction'),
        path("daily_news.html",views.daily_news,name="daily_news"),
        path("show/daily_news1",views.daily_news1,name="daily_news1"),
        path("weather.html",views.weather,name="weather.html"),
]

