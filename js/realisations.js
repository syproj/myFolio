'use strict'

/*--------------------------------------------------------------------------------
 javascript
 code principal sur chargement de page
 Surveillance des clics sur le lien après l'id showHideDiapo
 -------------------------------------------------------------------------------*/

document.addEventListener("DOMContentLoaded", function ()  {
  var lienSwitch = document.querySelector("#showHideDiapo a");
  if(typeof(lienSwitch) != 'undefined') {
    lienSwitch.addEventListener("click", onClicSwitchDiapo);
  }

});


/*--------------------------------------------------------------------------------
 fonction permettant d'afficher/masquer les diaporamas
 -------------------------------------------------------------------------------*/

function onClicSwitchDiapo() {

  // 1. table des pointeurs vers les sliders
  var tabImage = document.querySelectorAll(".flexslider");

  // 1b. on inverse l'utilisation de la classe hide pour chacun de ces pointeurs
  tabImage.forEach(function(e) {
    e.classList.toggle("hide");
  });

  //2. pointeur vers le lien de délenchement de cette fonction
  var zoneLien = document.querySelector("#showHideDiapo a");

  // 2b. on va changer le contenu de ce lien en fonction du contexte (sliders cachés ou montrés)
  var contenuLien = zoneLien.innerHTML;

  if (contenuLien.search("Masquer") >= 0 ) {
    //on a 'Masquer' dans le texte, donc on le change en Montrer maintenant qu'on a changé la class de masquage des diaporamas
    var nouveauContenu = contenuLien.replace('Masquer', 'Montrer');
    zoneLien.innerHTML = nouveauContenu;
  }
  else {
    //on est sur le "j'ai déjà masqué, je veux montrer", donc on inverse le message
    var nouveauContenu = contenuLien.replace('Montrer', 'Masquer');
    zoneLien.innerHTML = nouveauContenu;
  }

  //pour éviter remonter haut page quand le changement de hauteur ne le nécessite pas
  return false;
}
