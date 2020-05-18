<div class="container-fluid">
	<div class="row">
		<div class="col-md-12 text-right">
			<button class="btn btn-warning" data-tipo="<?=(isset($_GET['alumno']) ? '3' : '4');?>"><i class="fas fa-plus"></i> Agregar <?php echo (isset($_GET['alumno']) ? 'Alumno' : 'Profesor'); ?> Masivo (CSV)</button>
		</div>
	</div>
</div><br>
<section class="card card-success">
	<header class="card-header">
		<h2 class="card-title">Agregar <?php echo (isset($_GET['alumno']) ? 'Alumno' : 'Profesor'); ?></h2>
	</header>
	<div class="card-body">

	<form id="form-ingresar-persona">

		<?php if(isset($_GET['alumno'])): ?>
		<input name="tipoRoles" type="hidden" value="4">
		<?php endif ?>

		<?php if(isset($_GET['profesor'])): ?>
		<input name="tipoRoles" type="hidden" value="3">
		<div class="row">

			<div class="col-md-5">
				<label class="control-label">Titulo / Profesión</label>
				<input name="profesion" type="text" class="form-control">
				<div class="label-error-profesion"></div>
			</div>
			
		</div>
		<br>
		<?php endif ?>
		<div class="row">

			<div class="col-md-3">
				
				<label class="control-label">Nombres</label>
				<input name="nombres" type="text" class="form-control">
				<div class="label-error-nombre"></div>
			</div>
			<div class="col-md-3">
				
				<label class="control-label">Apellidos</label>
				<input name="apellidos" type="text" class="form-control">
				<div class="label-error-apellido"></div>

			</div>
			<div class="col-md-1">

				<label class="control-label">T Doc.</label>
				<select name="tipoDocumento" id="" class="form-control">
					<?=$this->tipo_documento;?>
				</select>

			</div>
			<div class="col-md-2">
				
				<label class="control-label"># Documento</label>
				<input name="documento" id="documento" type="text" class="form-control">
				<div class="label-error-documento"></div>

			</div>
			<div class="col-md-3">
				
				<label class="control-label">E-Mail</label>
				<input name="email" type="text" class="form-control">
				<div class="label-error-email"></div>

			</div>

		</div>
		<br>
		<div class="row">
			
			<div class="col-md-4">
				
				<label class="control-label">Dirección</label>
				<input name="direccion" type="text" class="form-control">
				<div class="label-error-direccion"></div>
			
			</div>
			<div class="col-md-2">
				
				<label class="control-label">Departamento</label>
				<select name="departamento" id="departamento" class="form-control">
					<?=$this->departamento;?>
				</select>
			
			</div>
			<div class="col-md-2">
				
				<label class="control-label">Municipio</label>
				<select name="municipio" id="municipio" class="form-control">
					<option value="">--</option>
				</select>
			
			</div>
			<div class="col-md-1">
				
				<label class="control-label">T Telf.</label>
				<select name="tipoTelefono" id="" class="form-control">
					<option value="Casa">Casa</option>
					<option value="Celular">Celular</option>
					<option value="Trabajo">Trabajo</option>
				</select>

			</div>
			<div class="col-md-3">
				
				<label class="control-label">Telefono</label>
				<input name="telefono" type="text" class="form-control">
				<div class="label-error-telefono"></div>

			</div>

		</div><br>
		
		<?php if(isset($_GET['alumno'])): ?>
		<div class="row">

			<div class="col-md-4">

				<label class="control-label">Facultad</label>
				<select name="facultad" id="facultad" class="form-control">
					<?=$this->facultad;?>
				</select>
				
			</div>
			<div class="col-md-4">

				<label class="control-label">Programa</label>
				<select name="programa" id="programa" class="form-control">
					<option value="">--</option>
				</select>
				
			</div>
		</div>
		<br>
		<?php endif ?>

		<div class="row">
			
			<!--<div class=" col-md-2">

				<label class="control-label">QR</label>
				<input name="qrdata" id="qrdata" type="text" class="form-control" readonly="">

			</div>-->
			<div class="col-md-4">

				<label class="control-label">RFID</label>
				<div class="input-group">
					<span class="input-group-prepend">
						<button id="agregar-rfid" title="Agregar RFID" class="btn btn-primary" type="button"><i class="fas fa-plus"></i></button>
					</span>
					<input name="rfidData" id="rfidData" type="text" style="font-weight: bold; color: black; font-size: 1.2em;" class="form-control text-center" readonly="">
				</div>
				<div class="label-error-rfidData"></div>

			</div>
			<div class="col-md-2">
				
				<label class="control-label">Usuario</label>
				<input name="user" id="user" type="text" class="form-control">
				<div class="label-error-user"></div>

			</div>
			<div class="col-md-3">
				
				<label class="control-label">Clave</label>
				<input name="clave" type="text" class="form-control">
				<div class="label-error-clave"></div>

			</div>
			<div class="col-md-3">
				
				<label class="control-label">Repetir Clave</label>
				<input name="reclave" type="text" class="form-control">
				<div class="label-error-reclave"></div>

			</div>

		</div>
		<br>
		<div class="row">
			
			<div class="col-md-12 text-center">
				<button id="save-persona" class="btn btn-success"><i class="fas fa-save"></i> Guardar</button>
				<button id="cancel-persona" class="btn btn-danger"><i class="fas fa-times"></i> Cancelar</button>
			</div>

		</div>
	</form>

	</div>
</section>

<div class="modal fade fade bd-example-modal-sm" id="modal-agregar-rfid" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-sm">
    <div class="modal-content">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body text-center">
        	<span style="font-weight: bold; color: green; font-size: 1.2em;"><div id="rfid-listener">Coloque la tarjeta en el lector</div></span>
        </div>
    </div>
  </div>
</div>