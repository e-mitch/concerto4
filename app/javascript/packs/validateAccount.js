var usernameReadyToSubmit = false;
var passwordReadyToSubmit = false;

var allUsernames = [];

let form = document.getElementById("userForm");
let usernameInput = document.getElementsByClassName('form-control')[0];
let usernameError = document.getElementById('usernameError');

usernameInput.addEventListener("change", () => {
  usernameValue = usernameInput.value;
  if (usernameValue.length < 5 && usernameValue.length > 25){
    usernameError.innerHTML = "Please enter a username longer than five characters";
    usernameReadyToSubmit = false;
  } else{
    usernameError.innerHTML = "";
    usernameReadyToSubmit = true;
  }
});

let passwordInput = document.getElementsByClassName('form-control')[1];
let passwordError = document.getElementById('passwordError');

passwordInput.addEventListener("change", () => {
  passwordValue = passwordInput.value;
  if (passwordValue.length < 8){
    passwordError.innerHTML = "Please enter a password longer than 7 characters";
    passwordReadyToSubmit = false;
  }else{
    passwordError.innerHTML = "";
    passwordReadyToSubmit = true;
  }  
});


form.addEventListener('submit',(event) =>{
  console.log("username: " + usernameReadyToSubmit + " password: " + passwordReadyToSubmit);
  if (usernameReadyToSubmit == false || passwordReadyToSubmit == false){
    event.preventDefault();
  }
});

form.addEventListener('update',(event) =>{
  if (usernameReadyToSubmit == false || passwordReadyToSubmit == false){
    event.preventDefault();
  }
});