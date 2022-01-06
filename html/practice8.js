function checkValidate(){

		var firstName = document.forms['registrationForm']['fname'];
		var lastName = document.forms['registrationForm']['lname'];
		var email = document.forms['registrationForm']['email'];
		var remail = document.forms['registrationForm']['remail'];
		var password = document.forms['registrationForm']['password'];
		var rpassword = document.forms['registrationForm']['rpassword'];


		if (firstName.value == '') {
			alert('Please Enter First name');
			return false;
	
		}

		if (lastName.value == '') {
			alert('Please Enter Last name');
			return false;
	
		}
	
		if (email.value == '') {
			alert('Please Enter Email');
			return false;
		}
		
		if(email.value != remail.value ){
			alert("Please make sure your email match")

		}

		if(password.value != rpassword.value ){
			alert("Please make sure your passwords match")

		}

	
}	
		


