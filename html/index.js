// 6-1-2021
// Register, login, Contact Form task

function loginValidation() {
    var email = document.forms['loginForm']['email'];
    var pass = document.forms['loginForm']['psw'];

    if (email.value == '') {
        alert('Please Enter Email!!');
        return false;

    }

    if (pass.value == '') {
        alert('Please Enter Password!!');
        return false;

    }
    alert("Login Successfull");  //If Email and Password True
    return true;

}


function contactValidation() {

    var name = document.forms['contactForm']['name'];
    var email = document.forms['contactForm']['email'];

    if (name.value == '') {
        alert('Please Enter name');
        return false;

    }


    if (email.value == '') {
        alert('Please Enter Email : ');
        return false;
    }
    return true;
}