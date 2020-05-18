$( document ).ready(function() {

    //****************************************************************
    //      Variables de posicion para notificaciones
    //****************************************************************
    var stack_bar_top = {"dir1": "down", "dir2": "right", "push": "top", "spacing1": 0, "spacing2": 0};

    //****************************************************************
    // Creamos los usuarios del sistema: Profesores y Alumnos
    //****************************************************************
    $('#save-persona').on( 'click', function(event) {
        event.preventDefault();

        if ( $("#user").hasClass('error') ) {

            $("input[name='user']").focus();

        } else {

            $('div[class*="label-error-"]').html('');
            $(':input').removeClass('error');

            //Validamos inputs
            if( $("input[name='nombres']").val() == '' ) {

                $("input[name='nombres']").focus();
                $("input[name='nombres']").addClass('error');
                $('.label-error-nombre').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');


            } else if ( $("input[name='profesion']").val() == '' ){

                $("input[name='profesion']").focus();
                $("input[name='profesion']").addClass('error');
                $('.label-error-profesion').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');


            } else if ( $("input[name='apellidos']").val() == '' ){

                $("input[name='apellidos']").focus();
                $("input[name='apellidos']").addClass('error');
                $('.label-error-apellido').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

            } else if ( $("select[name='tipoDocumento'] option:selected").val() == 0 ) {

                $("select[name='tipoDocumento']").focus();
                $("select[name='tipoDocumento']").addClass('error');

            } else if ( $("input[name='documento']").val() == '' ) {

                $("input[name='documento']").focus();
                $("input[name='documento']").addClass('error');
                $('.label-error-documento').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

            } else if ( $("input[name='email']").val() == '' ) {

                $("input[name='email']").focus();
                $("input[name='email']").addClass('error');
                $('.label-error-email').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');


            } else if ( $("input[name='direccion']").val() == '' ) {

                $("input[name='direccion']").focus();
                $("input[name='direccion']").addClass('error');
                $('.label-error-direccion').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

            } else if ( $("select[name='departamento'] option:selected").val() == 0 ) {

                $("select[name='departamento']").focus();
                $("select[name='departamento']").addClass('error');


            } else if ( $("select[name='municipio'] option:selected").val() == 0 ) {

                $("select[name='municipio']").focus();
                $("select[name='municipio']").addClass('error');


            } else if ( $("input[name='telefono']").val() == '' ) {

                $("input[name='telefono']").focus();
                $("input[name='telefono']").addClass('error');
                $('.label-error-telefono').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

            } else if ( $("select[name='facultad'] option:selected").val() == 0 ) {

                $("select[name='facultad']").focus();
                $("select[name='facultad']").addClass('error');

            } else if ( $("select[name='programa'] option:selected").val() == 0 ) {

                $("select[name='programa']").focus();
                $("select[name='programa']").addClass('error');

            } else if ( $("input[name='rfidData']").val() == '' ) {

                $("input[name='rfidData']").focus();
                $("input[name='rfidData']").addClass('error');
                $('.label-error-rfidData').html('<label id="fullname-error" class="error" for="fullname">Debe agregar número de RFID</label>');

            } else if ( $("input[name='user']").val() == '' ) {

                $("input[name='user']").focus();
                $("input[name='user']").addClass('error');
                $('.label-error-user').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');
                
            } else if ( $("input[name='clave']").val() == '' ) {

                $("input[name='clave']").focus();
                $("input[name='clave']").addClass('error');
                $('.label-error-clave').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

            } else if ( $("input[name='reclave']").val() == '' ) {

                $("input[name='reclave']").focus();
                $("input[name='reclave']").addClass('error');
                $('.label-error-reclave').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

            } else if ( $("input[name='reclave']").val() != $("input[name='clave']").val() ) {

                $("input[name='reclave']").focus();
                $("input[name='reclave']").addClass('error');
                $('.label-error-reclave').html('<label id="fullname-error" class="error" for="fullname">Las claves no son iguales</label>');
                $("input[name='clave']").addClass('error');
                $('.label-error-clave').html('<label id="fullname-error" class="error" for="fullname">Las claves no son iguales</label>');

            } else {

                var datos = $('#form-ingresar-persona').serialize();
                $.ajax({

                    url: '?/servicios/ajax_agregarPersona&insertarPersona=true',
                    type: 'POST',
                    dataType: 'json',
                    data: datos,

                })
                .done(function( e ) {
                   
                    $('#form-ingresar-persona')[0].reset();
                    var notice = new PNotify({
                        title: e.titulo,
                        text: e.mensaje,
                        type: e.tipo,
                        addclass: 'stack-bar-top',
                        stack: stack_bar_top,
                        width: "100%"
                    });

                });

            }

        }

    });


    //****************************************************************
    //          Llenamos el select de facultad
    //****************************************************************
    $('#facultad').change(function( event ) {
        event.preventDefault();
        var id = $(this).children("option:selected").val();
        $.ajax({

            url: '?/servicios/ajax_agregarPersona&getProgramas=true&id_facultad=' + id,
            type: 'GET',
            dataType: 'json',
        })
        .done(function( data ) {

            $('#programa').html( data.html );

        });
        
    });

    //****************************************************************
    //          Llenamos el select de municipios
    //****************************************************************
    $('#departamento').change(function( event ) {
        event.preventDefault();
        var id = $(this).children("option:selected").val();
        $.ajax({

            url: '?/servicios/ajax_agregarPersona&getMunicipios=true&id_depart=' + id,
            type: 'GET',
            dataType: 'json',
        })
        .done(function( data ) {

            $('#municipio').html( data.html );

        });
        
    });

    //****************************************************************
    //            Confirmar si no hay usuarios iguales
    //****************************************************************
    $('#user').focusout(function(event) {
        event.preventDefault();

        var usuario = $(this).val();
        $.ajax({
            url: '?/servicios/ajax_agregarPersona&checkUser=true&user=' + usuario,
            type: 'GET',
            dataType: 'json',
        })
        .done(function( data ) {
            
            if(data.repetido == true){

                $('#user').addClass('error');
                $('.label-error-user').html('<label id="fullname-error" class="error" for="fullname">Este usuario ya esta en uso</label>');

            } else {

                $('#user').removeClass('error');
                $('.label-error-user').html('');
            }
            
        });
        
    });

    //****************************************************************
    //              Modal para agregar datos RFID
    //****************************************************************
    $('#agregar-rfid').on('click', function(event) {
        event.preventDefault();

        $('#modal-agregar-rfid').modal({
            backdrop: 'static', 
            keyboard: false
        });
    });

    //****************************************************************
    //         Escuchando en el modal para agregar RFID
    //****************************************************************
    var teclaModal = '';
    $('#modal-agregar-rfid').keypress(function( e ) {

        if( e.charCode === 13 ) {
            
            $('#rfidData').val( teclaModal );
            $('#qrdata').val( teclaModal );
            $('#modal-agregar-rfid').modal('hide');
            teclaModal = '';

        } else {

            teclaModal = teclaModal + e.key;
        }
    });

});
