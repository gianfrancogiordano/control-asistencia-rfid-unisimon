
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 text-right">
            <button id="newCurso" class="btn btn-success"><i class="fas fa-plus"></i> Agregar Curso</button>
        </div>
    </div><br>
    <div class="row">
		<div class="col-lg-12">

            <section class="card card-featured card-featured-success mb-4">
                <header class="card-header">
                    <h2 class="card-title">Cursos</h2>
                </header>
                <div class="card-body">
                    
                    <table class="table table-striped" cellspacing="0" width="100%" id="datatable-verCursos" data-url="?servicios/ajax_agregarCurso&tabla=true">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Curso</th>
                                <th>semestre</th>
                                <th>Programa</th>
                                <th>Facultad</th>
                                <th>Profesor Nombres</th>
                                <th>Profesor Apellidos</th>
                                <th>--</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>


                </div>
            </section>
			
		</div>
	</div>
</div>
    
<div class="modal fade bd-example-modal-xl" id="modal-new-curso" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-xl">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalCenterTitle">Nuevo Curso</h5>
        </div>
        <form id="form-nuevo-curso">
        <div class="modal-body">
            <div class="row">

                 <div class="col-md-2">
                    <label class="control-label">Código <span style="color: red">*</span></label>
                    <input name="codigoCurso" type="text" class="form-control">
                    <div class="label-error-codigoCurso"></div>
                </div>
                
                <div class="col-md-4">
                    <label class="control-label">Nombre Curso <span style="color: red">*</span></label>
                    <input name="nombreCurso" type="text" class="form-control">
                    <div class="label-error-nombreCurso"></div>
                </div>


            </div><br>
            <div class="row">

                <div class="col-md-4">
                    <label class="control-label">Facultad <span style="color: red">*</span></label>
                    <select class="form-control" name="facultad" id="facultad">
                       <?php echo $this->facultades; ?>
                    </select>
                </div>

                <div class="col-md-4">
                   <label class="control-label">Programa <span style="color: red">*</span></label>
                    <select name="programa" id="programa" class="form-control">
                        <option value="">--</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <label class="control-label">Semestre <span style="color: red">*</span></label>
                    <select class="form-control" name="semestre" id="semestre">
                        <option value="0">--</option>
                        <option value="1">Semestre 1</option>
                        <option value="2">Semestre 2</option>
                        <option value="3">Semestre 3</option>
                        <option value="4">Semestre 4</option>
                        <option value="5">Semestre 5</option>
                        <option value="6">Semestre 6</option>
                        <option value="7">Semestre 7</option>
                        <option value="8">Semestre 8</option>
                        <option value="9">Semestre 9</option>
                        <option value="10">Semestre 10</option>
                    </select>
                </div>

            </div><br>
            <div class="row">
                
                <div class="col-md-4">
                     <label class="control-label">Profesor del Curso <span style="color: red">*</span></label>
                    <select class="form-control" name="profesor" id="profesor">
                       <?php echo $this->profesores; ?>
                    </select>
                </div>
                <div class="col-md-4"><br><br><a href="?agregarPersona&profesor=true">Agregar Profesor</a></div>

            </div><br>
            <div class="row">
                <div class="col-md-4"> 
                    <span style="color: red">(*) <small>Elementos Obligatorios</small></span>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" id="save-modal-curso-nuevo" class="btn btn-success"><i class="fas fa-save"></i> Guardar</button>
            <button type="button" class="btn btn-secondary" id="cose-modal-curso-nuevo"><i class="fas fa-times"></i> Cerrar</button>
        </div>
        </form>
    </div>
  </div>
</div>