    
$( document ).ready(function() {

    var tecla = '';
    var table = $('#datatable-ejecutarLista');

//****************************************************************************************************
// La magia del RFID
//****************************************************************************************************

    $(document).keypress(function( e ) {

        console.dir( e );
        console.dirxml( e );
        console.log( e.key );

        if( e.charCode === 13 ) {

            console.log("Lectura de RFID");
            console.log( tecla );

            var lista = $('#lista-number').val();
            var link = "?servicios/ajax_ejecutarLista&rfid=true&idrfid=" + tecla + "&lista=" + lista;
            $.ajax({

                url: link,
                type: 'GET',
                dataType: 'json',

            }).done(function( data ) {

                console.log( data );

                if( data.actualizar ) {

                    table.fnDraw();

                }

            });

            tecla = '';

        } else {

            tecla = tecla + e.key;
        }
    });

//****************************************************************************************************
// La magia del RFID
//****************************************************************************************************

    table.dataTable({

        "createdRow": function( row, data, dataIndex ) {
            statusTable( row, data, dataIndex );
        },
        "lengthMenu": [ 50, 75, 100 ],
        "ordering": false,
        "searching": false,
        bServerSide: true,
        bProcessing: true,
        sAjaxSource: table.data('url'),
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

    function statusTable( row, data, dataIndex ) {

        console.log(row);
        console.log(data);
        console.log(dataIndex);

        $('td:eq(0)', row).html( '<b>' + data[0] + '</b>' );

        if( data[3] == "1" ) {
            $('td:eq(3)', row).html( '<span  title="Asistencia Ejecutada" class="fa fa-check" aria-hidden="true"><i></i></span>' );
            $(row).addClass('success');
        }
        if( data[3] == "0" ) {
            $('td:eq(3)', row).html( '<span  title="Sin Asistencia" style="color: red;" class="fa fa-times" aria-hidden="true"><i></i></span>' );
        }

    }
    
});
