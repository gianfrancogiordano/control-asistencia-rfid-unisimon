$(document).ready(function() {

	//****************************************************************
	// 		Variables de posicion para notificaciones
	//****************************************************************

	var stack_bar_top = {"dir1": "down", "dir2": "right", "push": "top", "spacing1": 0, "spacing2": 0};

	//****************************************************************
	// 		Abrimos el MODAL nuevo Curso
	//****************************************************************
	$('#newCurso').on('click', function( event ) {
		event.preventDefault();
		
		$('#modal-new-curso').modal({
            backdrop: 'static', 
            keyboard: false
        });

	});

	//****************************************************************
	// 		Cerramos el MODAL nuevo Curso
	//****************************************************************
	$('#cose-modal-curso-nuevo').on('click', function( event ) {
		event.preventDefault();
		$('#modal-new-curso').modal('hide');

	});

	//****************************************************************
	//		Llenamos opcion de programas en el modal
	//****************************************************************
    $('#facultad').change(function( event ) {
        event.preventDefault();
        var id = $(this).children("option:selected").val();
        $.ajax({

            url: '?/servicios/ajax_agregarCurso&getProgramas=true&id_fac=' + id,
            type: 'GET',
            dataType: 'json',
        })
        .done(function( data ) {

            $('#programa').html( data.html );

        });
        
    });


    //****************************************************************
    // Tabla para mostrar los cursos
	//****************************************************************
    var table = $('#datatable-verCursos');
    var buttons = "<button id=\"editCurso\" title=\"Editar Curso\" class=\"btn btn-success btn-sm\"><i class=\"fas fa-user-edit\" aria-hidden=\"true\"></i></button> ";

    table.dataTable({

        "createdRow": function( row, data, dataIndex ) {
            statusTable( row, data, dataIndex );
        },
        "lengthMenu": [ 25, 50, 75, 100 ],
        "ordering": false,
        bServerSide: true,
        bProcessing: true,
        sAjaxSource: table.data('url'),
       "columnDefs": [ {
                    "targets": -1,
                    "data": null,
                    "defaultContent": buttons
                } ],
        "language" : {

            "sProcessing":     null,
            "sLengthMenu":     "Mostrar _MENU_ registros",
            "sZeroRecords":    "No se encontraron resultados",
            "sEmptyTable":     "Ningún dato disponible en esta tabla",
            "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix":    "",
            "sSearch":         "",
            "searchPlaceholder": "Buscar",
            "sUrl":            "",
            "sInfoThousands":  ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst":    "Primero",
                "sLast":     "Último",
                "sNext":     "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        }
    });

    //****************************************************************
    // _Callback de la tabla de cursos
	//****************************************************************
    function statusTable( row, data, dataIndex ) {

        $('td:eq(0)', row).html( '<b>' + data[0] + '</b>' );

        if( data[6] == "1" ) {
            $('td:eq(6)', row).html( '<span  title="Punto de Venta: Activo" style="color: green;" class="fa fa-check" aria-hidden="true"><i></i> Activo</span>' );
        }
        if( data[6] == "0" ) {
            $('td:eq(6)', row).html( '<span  title="Punto de Venta: Inactivo" style="color: red;" class="fa fa-times" aria-hidden="true"><i></i> Inactivo</span>' );
        }

    }


	//****************************************************************
	//	Creamos nuevo curso
	//****************************************************************
	$('#save-modal-curso-nuevo').on('click', function(event) {
		event.preventDefault();
		var datos = $('#form-nuevo-curso').serialize();

 		//Limpiamos los inputs
        $('div[class*="label-error-"]').html('');
        $(':input').removeClass('error');

        //Validamos inputs
        if( $("input[name='codigoCurso']").val() == '' ) {

            $("input[name='codigoCurso']").focus();
            $("input[name='codigoCurso']").addClass('error');
            $('.label-error-codigoCurso').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

        } else if ( $("input[name='nombreCurso']").val() == '' ) {

            $("input[name='nombreCurso']").focus();
            $("input[name='nombreCurso']").addClass('error');
            $('.label-error-nombreCurso').html('<label id="fullname-error" class="error" for="fullname">Debe llenar este espacio</label>');

        } else if ( $("select[name='facultad'] option:selected").val() == 0 ) {

            $("select[name='facultad']").focus();
            $("select[name='facultad']").addClass('error');

        } else if ( $("select[name='programa'] option:selected").val() == 0 ) {

            $("select[name='programa']").focus();
            $("select[name='programa']").addClass('error');

        } else if ( $("select[name='semestre'] option:selected").val() == 0 ) {

            $("select[name='semestre']").focus();
            $("select[name='semestre']").addClass('error');

        } else if ( $("select[name='profesor'] option:selected").val() == 0 ) {

            $("select[name='profesor']").focus();
            $("select[name='profesor']").addClass('error');

       	} else {

			$.ajax({
				url: '?/servicios/ajax_agregarCurso&insertarCurso=true',
				type: 'POST',
				dataType: 'json',
				data: datos,
			})
			.done(function( e ) {

				$('#modal-new-curso').modal('hide');
				$('#form-nuevo-curso')[0].reset();
				table.fnDraw();
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

	});

});