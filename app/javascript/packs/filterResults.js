console.log("testing JS")
document.getElementById("varietySelect").addEventListener("change", getVariety);
document.getElementById("genreSelect").addEventListener("change", getGenre);
document.getElementById("experienceSelect").addEventListener("change", getExperience);
document.getElementById("newSearch").addEventListener("click", newSearch);
numCells = document.getElementsByTagName("td").length;

cells = document.getElementsByTagName("td");
rows = document.getElementsByTagName("tr");
var rowsCopy = [];
for (i = 0; i < rows.length; i ++){
  rowsCopy.push(rows[i]);
}
console.log(rowsCopy);

function getVariety(){
  numRows = document.getElementsByTagName("tr").length;
  varietySelection = document.getElementsByName("variety")[0].value;
  console.log("Variety selection " + varietySelection);
  for(i = 1; i < numRows; i++){
    if (rows[i].getElementsByTagName("td")[1].innerText != varietySelection){
      rows[i].parentElement.removeChild(rows[i]);
      i -=1;
      numRows -=1;
    } 
  }
}

function getGenre(){
  numRows = document.getElementsByTagName("tr").length;
  genreSelection = document.getElementsByName("genre")[0].value;
  console.log(genreSelection);
  for(i=1; i< numRows;i++){
    if (rows[i].getElementsByTagName("td")[2].innerText != genreSelection){
      rows[i].parentElement.removeChild(rows[i]);
      i -=1;
      numRows -=1;
    }
  }
}

function getExperience(){   
  numRows = document.getElementsByTagName("tr").length;
  experienceSelection = document.getElementsByName("experience")[0].value;
  var intSelection = parseInt(experienceSelection, 10);
  for(i = 1; i < numRows; i++){
    tdValue = rows[i].getElementsByTagName("td")[3].innerText;
    intTD = parseInt(tdValue,10);
    if(intTD < intSelection){
      rows[i].parentElement.removeChild(rows[i]);
      i -= 1;
      numRows -= 1;
    }
  }
}

document.getElementById("newSearch").addEventListener("click", newSearch);
function newSearch(){
  document.getElementsByName("variety")[0].value = "";
  document.getElementsByName("experience")[0].value = "";
  document.getElementsByName("genre")[0].value = "";
  remainingRows = [];
  for (a=0; a < remainingRows.length; a++){
    remainingRows[a].parentElement.removeChild(remainingRows[a]);
  }
  
  for(i=1; i < rowsCopy.length; i++){
    table = document.getElementsByTagName("table")[0];
    table.appendChild(rowsCopy[i]);
  }
}

