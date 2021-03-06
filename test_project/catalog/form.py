from django import forms



from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
#class LoginForm(forms.Form):
    #username = forms.CharField(max_length = 100) 
   # password = forms.CharField(widget = forms.PasswordInput)
    #email = forms.EmailField(required=True)

class NewUserForm(UserCreationForm):
	email = forms.EmailField(required=True)
	first_name=forms.CharField(max_length=100)
	last_name=forms.CharField(max_length=100)


	class Meta:
		model = User
		fields = ("username", "email", "password1", "password2")

	def save(self, commit=True):
		user = super(NewUserForm, self).save(commit=False)
		user.email = self.cleaned_data['email']
		if commit:
			user.save()
		return user





   
		   




		   



    
	  
         
		 




	
		