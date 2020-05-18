
<div class="row">

	<?php for ($i=0; $i < count($this->cursos_profesor); $i++) { ?>
	<div class="col-md-4">
		<section class="card card-featured-left card-featured-success mb-4">
			<div class="card-body">
				<div class="widget-summary">
					<div class="widget-summary-col widget-summary-col-icon">
						<div class="summary-icon bg-success">
							<i class="fas fa-book"></i>
						</div>
					</div>
					<div class="widget-summary-col">
						<div class="summary">
							<h4 class="title">Nombre Curso</h4>
							<div class="info">
								<strong class="amount"><?=$this->cursos_profesor[$i]['cursoNombre']?></strong>
							</div>
						</div>
						<div class="summary-footer">
							<a href="?verListas&profe=<?=$this->cursos_profesor[$i]['profesor_profesorId']?>&curso=<?=$this->cursos_profesor[$i]['cursoId']?>" class="text-muted text-uppercase">(Ver Listas de Asistencias)</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<?php } ?>

</div>