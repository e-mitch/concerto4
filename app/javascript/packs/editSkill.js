var varietyReadyToSubmit = true;
var genreReadyToSubmit = true;
var experienceReadyToSubmit = true;
var detailsReadyToSubmit = true;

let form = document.getElementById("skillForm");
let varietyInput = document.getElementsByClassName('form-control')[0];
let varietyValue = document.getElementById('varietyError');

varietyInput.addEventListener("change", () => {
  varietyValue = varietyInput.value;
  if (varietyValue.length < 2){
    varietyError.innerHTML = "Please enter a skill variety";
    varietyReadyToSubmit = false;
  } else{
    varietyError.innerHTML = "";
    varietyReadyToSubmit = true;
  }
});

let genreInput = document.getElementsByClassName('form-control')[1];
let genreError = document.getElementById('genreError');

genreInput.addEventListener("change", () => {
  genreValue = genreInput.value;
  if (genreValue.length < 2 ){
    genreError.innerHTML = "Please enter a genre."
    genreReadyToSubmit = false;
  }else{
    genreError.innerHTML = "";
    genreReadyToSubmit = true;
  }  
});

let experienceInput = document.getElementsByClassName('form-control')[2];
let experienceError = document.getElementById('experienceError');

experienceInput.addEventListener("change", () => {
  experienceValue = experienceInput.value;
  if (experienceValue.length < 1){
    experienceError.innerHTML = "Please enter an experience level."
    experienceReadyToSubmit = false;
  }else{
    experienceError.innerHTML = "";
    experienceReadyToSubmit = true;
  }  
});

let detailsInput = document.getElementsByClassName('form-control')[3];
let detailsError = document.getElementById('detailsError');

detailsInput.addEventListener("change", () => {
  detailsValue = detailsInput.value;
  if (detailsValue.length < 15 ){
    detailsError.innerHTML = "Please enter a description of details."
    detailsReadyToSubmit = false;
  }else{
    detailsError.innerHTML = "";
    detailsReadyToSubmit = true;
  }  
});


form.addEventListener('submit',(event) =>{
  console.log("Variety: " + varietyReadyToSubmit + " genre: " + genreReadyToSubmit + " experience: " + experienceReadyToSubmit + " Details: " + detailsReadyToSubmit);
  if (varietyReadyToSubmit == false || genreReadyToSubmit == false || experienceReadyToSubmit == false || detailsReadyToSubmit==false){
    event.preventDefault();
  }
});

form.addEventListener('update',(event) =>{
  if (varietyReadyToSubmit == false || genreReadyToSubmit == false || experienceReadyToSubmit == false || detailsReadyToSubmit==false){
    event.preventDefault();
  }
});