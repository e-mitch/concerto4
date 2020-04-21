var nameReadyToSubmit = false;
var emailReadyToSubmit = false;
var bioReadyToSubmit = false;
var interestsReadyToSubmit = false;

let form = document.getElementById("profileForm");
let nameInput = document.getElementsByClassName('form-control')[0];
let nameError = document.getElementById('nameError');

nameInput.addEventListener("change", () => {
  nameValue = nameInput.value;
  if (nameValue.length < 5){
    nameError.innerHTML = "Please enter a name longer than five characters";
    nameReadyToSubmit = false;
  } else{
    nameError.innerHTML = "";
    nameReadyToSubmit = true;
  }
});

let emailInput = document.getElementsByClassName('form-control')[1];
let emailError = document.getElementById('emailError');

emailInput.addEventListener("change", () => {
  emailValue = emailInput.value;
  if (/\S+@\S+\.\S+/.test(emailValue) == false){
    emailError.innerHTML = "Please enter a valid email.";
    emailReadyToSubmit = false;
  }else{
    emailError.innerHTML = "";
    emailReadyToSubmit = true;
  }  
});


let bioInput = document.getElementsByClassName('form-control')[2];
let bioError = document.getElementById('bioError');

bioInput.addEventListener("change", () => {
  bioValue = bioInput.value;
  if (bioValue.length < 30){
    bioError.innerHTML = "Please enter a bio longer than thirty characters";
    bioReadyToSubmit = false;
  } else{
    bioError.innerHTML = "";
    bioReadyToSubmit = true;
  }
});

let interestsInput = document.getElementsByClassName('form-control')[3];
let interestsError = document.getElementById('interestsError');

interestsInput.addEventListener("change", () => {
  interestsValue = interestsInput.value;
  if (interestsValue.length < 30){
    interestsError.innerHTML = "Please enter text longer than thirty characters";
    interestsReadyToSubmit = false;
  } else{
    interestsError.innerHTML = "";
    interestsReadyToSubmit = true;
  }
});


form.addEventListener('submit',(event) =>{
  if (nameReadyToSubmit == false || emailReadyToSubmit == false|| bioReadyToSubmit == false || interestsReadyToSubmit == false){
    event.preventDefault();
  }
});

form.addEventListener('update',(event) =>{
  if (nameReadyToSubmit == false || emailReadyToSubmit == false|| bioReadyToSubmit == false || interestsReadyToSubmit == false){
    event.preventDefault();
  }
});