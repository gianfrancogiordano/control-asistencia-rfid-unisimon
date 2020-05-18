$(document).ready(function() {

   	var tecla = '';

   	$(document).keypress(function( e ) {

    		//console.dir( e );
    		//console.dirxml( e );
    		//console.log( e.key );

    		if( e.charCode === 13 ) {

    			console.log("Lectura de RFID");
    			console.log( tecla );


    		} else {

    			tecla = tecla + e.key;
    		}
	});


});