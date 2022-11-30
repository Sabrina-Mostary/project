// var form = document.getElementById("myForm1");

// function handleForm(event) {
//     event.preventDefault();
// }
// form.addEventListener('submit', handleForm);

function CheckPassword(inputtxt) {
    var passw = /^[A-Za-z]\w{5,10}$/;
    if (inputtxt.value.match(passw)) {
        // alert('Correct, try another...')
        return true;
    } else {
        alert('[Password must contain 5 to 10 characters with numeric digits, underscore and first character must be a letter]')
        return false;
    }
}

function matchpass() {
    var firstpassword = document.myForm1.password1.value;
    var secondpassword = document.myForm1.password2.value;

    if (firstpassword == secondpassword) {
        return true;
    } else {
        alert("password must be same!");
        return false;
    }
}

function validateemail() {
    var x = document.myForm1.email.value;
    var atposition = x.indexOf("@");
    var dotposition = x.lastIndexOf(".");
    if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
        alert("Please enter a valid e-mail address \n atpostion:" + atposition + "\n dotposition:" + dotposition);
        return false;
    }
}



function checkIfCaseExists() {
    var form_valid = false;
    //whatever condition you want to check
    if (validateForm() == true) {
        form_valid = true;
    }
    form_valid = false;
}

function validateForm() {
    var fname = document.forms["myForm1"]["fname"].value;
    var lname = document.forms["myForm1"]["lname"].value;
    var email = document.forms["myForm1"]["email"].value;
    var userid = document.forms["myForm1"]["userid"].value;
    var password1 = document.forms["myForm1"]["password1"].value;
    var password2 = document.forms["myForm1"]["password2"].value;

    if (fname.length < 2) {
        document.getElementById('error-fname').innerHTML = " Please Enter Your First Name *";
    }
    if (lname.length < 2) {
        document.getElementById('error-lname').innerHTML = " Please Enter Your Last Name *";
    }
    if (email.length < 2) {
        document.getElementById('error-email').innerHTML = " Please Enter Your Email *";
    }
    if (userid.length < 2) {
        document.getElementById('error-userid').innerHTML = " Please Enter Your Userid *";
    }
    if (password1.length < 2) {
        document.getElementById('error-password1').innerHTML = " Please Enter Your Password*";
    }
    if (password2.length < 2) {
        document.getElementById('error-password2').innerHTML = " Please Enter Your Password*";
    }
    if (fname.length < 2 || lname.length < 2 || email.length < 2 || userid.length < 2 || password1.length < 2 || password2.length < 2) {
        return false;
    } else {
        return true;
    }
}