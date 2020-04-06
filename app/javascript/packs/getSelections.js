console.log("Testing javascript files")
document.getElementById("submitSearch").addEventListener("click", saveValues);

function saveValues(){
   varietyRequirement = document.getElementById("variety").value;
  console.log(varietyRequirement);
   genreRequirement = document.getElementById("genre").value;
  console.log(genreRequirement);
   experienceRequirement = document.getElementById("experience").value;
  console.log(experienceRequirement);
}

