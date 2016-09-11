/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function saved() {
    var laguage = document.getElementById("btn-input").value;
    document.getElementById("btn-input").value = "";
    var Object;
    if (window.XMLHttpRequest) {
        Object = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        Object = new ActiveXObject();
    } else {
        alert("Your Browser Doesn't Support AJAX Technology!");
    }
    if (Object !== null) {
        Object.onreadystatechange = function () {
            if (Object.readyState < 4) {
            } else if (Object.readyState === 4) {
                var ResponseText = Object.responseText;
                if (ResponseText == "false") {
                    alert("Something wrong !");
                }
                getlanguagelist();
            }
        };
        Object.open("POST", "SaveProgramingLanguage", true);
        Object.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        Object.send("laguage=" + laguage);
    }
}