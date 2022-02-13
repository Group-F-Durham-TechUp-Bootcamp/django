from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login 
#from .form import LoginForm
from django.http import HttpResponse

from .form import NewUserForm
from django.contrib.auth import login
from django.contrib import messages

from django.contrib.auth.forms import AuthenticationForm

def login_user(request):
    if request.method =="POST":
        #form =LoginForm(request.POST)
        form =NewUserForm(request.POST)

        if form.is_valid():
            cd = form.cleaned_data
            user = authenticate(request, 
            username= cd['username'],
            password = cd['password'])

            if user is not None:
               login(requst, user)
               return HttpResponse('authentification was successfull')

            else:
              return HttpResponse('authentification failed, please try again')
    else:

        #form = LoginForm()
        form = NewUserForm()
    return render(request=request, template_name='login.html',context= {'form':form})   

def register_request(request):
	if request.method == "POST":
		form = NewUserForm(request.POST)
		if form.is_valid():
			user = form.save()
			login(request, user)
			messages.success(request, "Registration successful." )
			return redirect("login.html")
		messages.error(request, "Unsuccessful registration. Invalid information.")
	form = NewUserForm()
	return render (request=request, template_name ="register.html", context={'register_form':form} )


#def login_user(request):
	#if request.method == "POST":
		#form = AuthenticationForm(request, data=request.POST)
		#if form.is_valid():
			#username = form.cleaned_data.get('username')
			#password = form.cleaned_data.get('password')
			#user = authenticate(username=username, password=password)
			#if user is not None:
				#login(request, user)
				#messages.info(request, "You are now logged in ")
				#return redirect("login")
			#else:
				#messages.error(request,"Invalid username or password.")
		#else:
			#messages.error(request,"Invalid username or password.")
	#form = AuthenticationForm()
	#return render(request=request, template_name="login.html", context={"login_form":form})