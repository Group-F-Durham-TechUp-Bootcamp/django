from django.urls import path, include
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns


urlpatterns = [
    path('login', views.login_user, name='login'),
    path('register' , views.register_request,  name="signup"),
    
]
urlpatterns += staticfiles_urlpatterns()