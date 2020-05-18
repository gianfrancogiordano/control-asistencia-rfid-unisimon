    
$( document ).ready(function() {

    var table = $('#datatable-verListas');
    var buttons = "<button id=\"editLista\" title=\"Editar Lista / Pasar Lista\" class=\"btn btn-success btn-sm\"><i class=\"fas fa-user-edit\" aria-hidden=\"true\"></i></button> ";
        buttons+= "<button id=\"cerarLista\" title=\"Cerrar Lista\" class=\"btn btn-danger btn-sm\"><i class=\"fas fa-door-closed\" aria-hidden=\"true\"></i></button>";

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

    function statusTable( row, data, dataIndex ) {

        $('td:eq(0)', row).html( '<b>' + data[0] + '</b>' );

        if( data[6] == "1" ) {
            $('td:eq(6)', row).html( '<span  title="Punto de Venta: Activo" style="color: green;" class="fa fa-check" aria-hidden="true"><i></i> Activo</span>' );
        }
        if( data[6] == "0" ) {
            $('td:eq(6)', row).html( '<span  title="Punto de Venta: Inactivo" style="color: red;" class="fa fa-times" aria-hidden="true"><i></i> Inactivo</span>' );
        }

    }

    //*********************************************************************************************************
    //  Abrimos y cerramos modal para editar lista de asistencia
    //*********************************************************************************************************

    $('#datatable-verListas tbody').on( 'click', '#editLista', function ( e ) {
        var sData = table.fnGetData( $(this).parents('tr') );

        /*$('#modal-edit-list').modal({
            backdrop: 'static', 
            keyboard: false
        });*/
        
        window.open('?ejecutarLista&tabla=true&lista='+sData[0]+'&nombre_curso='+sData[1], '_blank');

    });

    $('#save-modal-edit-list').on( 'click', function () {

        console.log("salvando modal!");

        //$('#modal-edit-list').modal('dispose');
        $('#modal-edit-list').modal('hide');

    });

    //***********************************************************************************************************
    //***********************************************************************************************************
    
});
