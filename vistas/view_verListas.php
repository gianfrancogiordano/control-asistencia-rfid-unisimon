	<div class="row">
		<div class="col-lg-12">

            <section class="card card-featured card-featured-success mb-4">
                <header class="card-header">
                    <h2 class="card-title">Lista asistencias</h2>
                </header>
                <div class="card-body">
                    
                    <table class="table table-striped" cellspacing="0" width="100%" id="datatable-verListas" data-url="?servicios/ajax_verListas&tabla=true&curso=<?=$_GET['curso']?>">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Curso</th>
                                <th>Tema Tratado</th>
                                <th>Metodo Utilizado</th>
                                <th>Recursos</th>
                                <th>Fecha</th>
                                <th>Salon</th>
                                <th>Descripción Salon</th>
                                <th>-</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>

                </div>
            </section>
			
		</div>
	</div>
    
<div class="modal fade bd-example-modal-xl" id="modal-edit-list" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-xl">
    <div class="modal-content">

        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            ...
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" id="save-modal-edit-list" class="btn btn-primary">Save changes</button>
        </div>

    </div>
  </div>
</div>