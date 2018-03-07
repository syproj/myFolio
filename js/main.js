'use strict'

/*--------------------------------------------------------------------------------
 jQuery
 code principal sur chargement de page
 Surveillance des clics sur les panneaux
 -------------------------------------------------------------------------------*/

$(function() {
  $('.flip3D').on('click', onClicFlip);

});


/*--------------------------------------------------------------------------------
 fonction permettant de retourner les panneaux
 (gère les 2 sens : front vers back et back vers front)
 -------------------------------------------------------------------------------*/

function onClicFlip() {

  // pointeurs vers l'avant et l'arrière du panneau cliqué
  var avant = $(this).children('.front');
  var arriere = $(this).children('.back');


  if (avant.hasClass("flipped")  ) {
    //on a déjà cliqué sur le panneau, il faut le repasser vers l'avant et cacher l'arrière
    avant.css ({
      transform: 'perspective( 600px ) rotateY( 0deg )'
    });

    arriere.css({
      transform: 'perspective( 600px ) rotateY( 180deg )'
    })
  }
  else {
    // on retourne le panneau avant pour voir l'arrière
    avant.css ({
      transform: 'perspective( 600px ) rotateY( -180deg )'
    });

    arriere.css({
      transform: 'perspective( 600px ) rotateY( 0deg )'
    })

  }

  //et on change la classe de l'avant pour marquer le changement
  avant.toggleClass("flipped");


  //pour éviter remonter haut page
  return false;
}
