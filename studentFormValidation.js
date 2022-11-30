function Validatemodfname() {
    //Regex for Valid Characters i.e. Alphabets, Numbers and Space.
    var regex = /^[A-Za-z, ]+$/

    //Validate TextBox value against the Regex.
    var isValid = regex.test(document.getElementById("fname").value);
    if (!isValid) {
        alert("Special Characters found in field: First name.");
        document.getElementById('fname').focus();
        return false;
    } else {
        return true;
    }
}

function Validatemodlname() {
    //Regex for Valid Characters i.e. Alphabets, Numbers and Space.
    var regex = /^[A-Za-z, ]+$/

    //Validate TextBox value against the Regex.
    var isValid = regex.test(document.getElementById("lname").value);
    if (!isValid) {
        alert("Special Characters found in field: Last name.");
        document.getElementById('lname').focus();
        return false;
    } else {
        return true;
    }
}

function Validatemodfathername() {
    //Regex for Valid Characters i.e. Alphabets, Numbers and Space.
    var regex = /^[A-Za-z, ]+$/

    //Validate TextBox value against the Regex.
    var isValid = regex.test(document.getElementById("father_name").value);
    if (!isValid) {
        alert("Special Characters found in field: Father name.");
        document.getElementById('father_name').focus();
        return false;
    } else {
        return true;
    }
}

function Validatemodmothername() {
    //Regex for Valid Characters i.e. Alphabets, Numbers and Space.
    var regex = /^[A-Za-z, ]+$/

    //Validate TextBox value against the Regex.
    var isValid = regex.test(document.getElementById("mother_name").value);
    if (!isValid) {
        alert("Special Characters found in field: Mother name.");
        document.getElementById('mother_name').focus();
        return false;
    } else {
        return true;
    }
}

function phonenumber(inputtxt) {
    var phoneno = /^\d{10}$/;
    if (inputtxt.value.match(phoneno)) {
        return true;
    } else {
        alert("Not a valid Phone Number");
        document.getElementById('stu_num').focus();
        return false;
    }
}

function rollnumber(inputtxt) {
    var modrollnumber = /^\d{12}$/;
    if (inputtxt.value.match(modrollnumber)) {
        return true;
    } else {
        alert("Not a valid Roll Number");
        document.getElementById('stu_roll').focus();
        return false;
    }
}

// function enrollnumber(inputtxt) {
//     var modenrollment = /^\d{10}$/;
//     if (inputtxt.value.match(modenrollment)) {
//         return true;
//     } else {
//         alert("Not a valid Enrollment Number");
//         return false;
//     }
// }

function aadhaarnumber(inputtxt) {
    var modaadhaar = /^\d{12}$/;
    if (inputtxt.value.match(modaadhaar)) {
        return true;
    } else {
        alert("Not a valid Aadhaar Number");
        document.getElementById('stu_aadhaar').focus();
        return false;
    }
}