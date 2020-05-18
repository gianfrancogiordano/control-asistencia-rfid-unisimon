<?php
require('assets/vendor/pdf/tcpdf_include.php');
$this->Vista("cartaLaboral");
if($this->logeado(true)){

$nombre = "";

//========================================================
//		Selecciono todos los empleados de SomosClick
//========================================================

$this->listaNomina = "";
$empleado = $this->getData("SELECT id,nombre,apellido FROM nomina", FULLROWS);

	if(is_array($empleado)){

		for($i=0; $i<count($empleado); $i++){

		$this->listaNomina .= '<option value='.$empleado[$i]['id'].'>'.$empleado[$i]['apellido'].", ".$empleado[$i]['nombre'].'</option>';

		}

	}

//========================================================
//		Selecciono todos los Clientes de Servidores
//========================================================

$this->listaServidores = "";
$cliente = $this->getData("SELECT idUser,nombre,empresa FROM Clientes", FULLROWS);

	if(is_array($cliente)){

		for($i=0; $i<count($cliente); $i++){

		$this->listaServidores .= '<option value='.$cliente[$i]['idUser'].'>'.$cliente[$i]['nombre'].", ".$cliente[$i]['empresa'].'</option>';

		}

	}

//========================================================
//		Selecciono todos las Empresas
//========================================================

$this->listaEmpresas = "";
$cliente = $this->getData("SELECT id,nombre,nit FROM `empresas` ", FULLROWS);

	if(is_array($cliente)){

		for($i=0; $i<count($cliente); $i++){

		$this->listaEmpresas .= '<option value='.$cliente[$i]['id'].'>'.$cliente[$i]['nombre'].'</option>';

		}

	}

//========================================================
//					Creo el PDF Servidores
//========================================================

if(isset($_POST['servidores'])){

	switch ($_POST['servidores']) {
		case '1':

		$cliente = $this->getData("SELECT nombre,empresa,ipservidor,CONCAT(FORMAT(valorAlquiler,2),' COP') as 'valorAlquiler', CONCAT(YEAR(NOW()),'-',MONTH(NOW()),'-',DAY(fechaVencimiento)) as 'desde',(DATE_ADD(CONCAT(YEAR(NOW()),'/',MONTH(NOW()),'/',DAY(fechaVencimiento)),INTERVAL 30 DAY)) as 'hasta' FROM `Clientes` where idUser=".$_POST['cliente'], FULLROWS);
			// create new PDF document
			$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

			// set document information
			$pdf->SetCreator(PDF_CREATOR);
			$pdf->SetAuthor('SomosClick S.A.S');
			$pdf->SetTitle('Documentos - Empresa');
			$pdf->SetSubject('Cobro Servidores - Clientes');
			$pdf->SetKeywords('');

			// set default header data
			$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING, array(0,0,0), array(0,0,0));
			$pdf->setFooterData(array(255,255,255), array(255,255,255));

			// set header and footer fonts
			$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
			//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

			// set default monospaced font
			$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

			// set margins
			$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
			$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
			$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

			// set auto page breaks
			$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

			// set image scale factor
			$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

			// set some language-dependent strings (optional)
			if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
				require_once(dirname(__FILE__).'/lang/eng.php');
				$pdf->setLanguageArray($l);
			}

			// ---------------------------------------------------------

			// add a page
			$pdf->AddPage();

			// set font
			$pdf->SetFont('helvetica', 'B', 20);

			//$pdf->Write(0, 'Example of HTML Justification', '', 0, 'L', true, 0, false, false, 0);

			// create some HTML content
			$html = "<br><h1 style=\"text-align: center\">CUENTA DE COBRO</h1>";

			// set core font
			$pdf->SetFont('helvetica', '', 12);

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);


			$html = "<br><p style=\"text-align: justify;\">

			Señores {$cliente[0]['empresa']},<br><br><br>

			La presente es para informarle el vencimiento del alquiler de su servidor VoIP ATENEA, <b>IP: {$cliente[0]['ipservidor']}</b> correspondiente al periodo desde <b>{$cliente[0]['desde']}</b> hasta <b>{$cliente[0]['hasta']}</b> por un monto de {$cliente[0]['valorAlquiler']}.

			<br>
			<p style=\"text-align: center;\">

			<h3>Consignaciones</h3><br>
			Bancolombia<br>
			Cuenta de Ahorros: 824 280 72002<br>
			Nombre: Gianfranco Giordano<br>
			C.E: 490.071<br>

			<br>

			Davivienda<br>
			Cuenta de Ahorros: 0670 0006 1399<br>
			Nombre: SomosClick S.A.S<br>
			NIT: 900.813.348-1<br>
			
			<br><br>

			Fecha limite de pago: <b>{$cliente[0]['hasta']}</b>

			</p>";

			// set core font
			$pdf->SetFont('helvetica', '', 12);

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);

			$html = "<br><br><br><br><br><br>
			<p>
			Atentamente,<br>
			Equipo de Gerencia<br>
			SomosClick S.A.S<br>
			Cel: +57 (304) 381.45.14
			</p>";

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);

			$pdf->setJPEGQuality(75);
			$pdf->SetXY(110, 222);
			$pdf->Image('./lib/pdf/images/firma_gerente.png', '', '', 62.04, 25.5, '', '', 'T', false, 300, '', false, false, 1, false, false, false);

			// reset pointer to the last page
			$pdf->lastPage();

			// ---------------------------------------------------------

			// Close and output PDF document
			// This method has several options, check the source code documentation for more information.
			$pdf->Output('cobro_servidor_voip.pdf', 'I');

			//============================================================+
			// END OF FILE
			//============================================================+

			break;
	}

} // FIN SERVIDORES

//========================================================
//					Creo el PDF Empleados
//========================================================

if (isset($_POST['documento'])) {

		switch ($_POST['documento']) {

			case '1':
			$empleado = $this->getData("SELECT id, tipo_documento, documento, titulo, Nombre, apellido, cargo, CONCAT(FORMAT(salario,2),'$') as 'salario',CONCAT('dia ',DAY(ingreso),' del mes ',MONTH(ingreso),' del año ',YEAR(ingreso)) as 'ingreso', contrato, CONCAT('Este certificado se expide a solicitud del interesado el dia ',DAY(NOW()),' del mes ',MONTH(NOW()), ' del año ', YEAR(NOW())) as 'hoy' FROM `nomina` WHERE id=".$_POST['empleado'],FULLROWS);


			// create new PDF document
			$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

			// set document information
			$pdf->SetCreator(PDF_CREATOR);
			$pdf->SetAuthor('SomosClick S.A.S');
			$pdf->SetTitle('Documentos - Empresa');
			$pdf->SetSubject('Carta Laboral - Empleados');
			$pdf->SetKeywords('');

			// set default header data
			$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING, array(0,0,0), array(0,0,0));
			$pdf->setFooterData(array(255,255,255), array(255,255,255));

			// set header and footer fonts
			$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
			//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

			// set default monospaced font
			$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

			// set margins
			$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
			$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
			$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

			// set auto page breaks
			$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

			// set image scale factor
			$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

			// set some language-dependent strings (optional)
			if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
				require_once(dirname(__FILE__).'/lang/eng.php');
				$pdf->setLanguageArray($l);
			}

			// ---------------------------------------------------------

			// add a page
			$pdf->AddPage();

			// set font
			$pdf->SetFont('helvetica', 'B', 20);

			//$pdf->Write(0, 'Example of HTML Justification', '', 0, 'L', true, 0, false, false, 0);

			// create some HTML content
			$html = "<br><br><br><br><br><br><h1 style=\"text-align: center\">CERTIFICA</h1>";

			// set core font
			$pdf->SetFont('helvetica', '', 12);

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);


			$otrohtml = "<br><br><br><br><p style=\"text-align: justify;\">    Por medio de la presente, Yo, <b>GIANFRANCO GIORDANO</b>, identificado con cédula
					de extranjería No. 490.071, propietario del establecimiento de comercio denominado <b>SOMOSCLICK S.A.S NIT: 900.813.348-1</b> me permito
					certificar que el Sr. <b>ALEJANDRO GABRIEL LUZARDO DÍAZ</b>, identificado con cédula de ciudadanía <b>1.127.629.043</b> mantiene relaciones
					comerciales desde más de 1 año con la empresa, como asesor empresarial. Los honorarios pagados se denominan en horas de servicios prestadas.
					El promedio de los honorarios pagados en los últimos 6 meses es de 1.500.000$ Pesos mensuales.
					<br>
					<br>
					A la presente ha cumplido satisfactoriamente sus compromisos y servicios prestados a nuestra empresa desde inicio de sus actividades. Se caracteriza
					por ser una persona responsable y honesta con su labor.
					<br>
					<br>
					Se expide a solicitud del interesado a los 9 dias del mes de Agosto del 2019.";

			$html = "<br><br><br><br><p style=\"text-align: justify;\">    La empresa <b>SOMOSCLICK S.A.S NIT: 900.813.348-1</b> hace constar que {$empleado[0]['titulo']} <b>{$empleado[0]['Nombre']} {$empleado[0]['apellido']}</b>, identificado con el número  de documento, <b>{$empleado[0]['tipo_documento']}: {$empleado[0]['documento']}</b> labora en esta empresa desde el <b>{$empleado[0]['ingreso']}</b>, con un contrato <b>{$empleado[0]['contrato']}</b>, con el cargo de <b>{$empleado[0]['cargo']}</b> devegando un sueldo de <b>{$empleado[0]['salario']}</b> Pesos Colombianos.
			<br>
			<br>
			<p style=\"text-align: center;\">{$empleado[0]['hoy']}.</p>";

			// set core font
			$pdf->SetFont('helvetica', '', 12);

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);

			$html = "<br><br><br><br><br>
			<p>
			Atentamente,<br>
			Gianfranco Giordano<br>
			Gerente<br>
			Cell: +57 (304) 381.45.14
			</p>";


			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);

			if(isset($_POST['sello'])){

				$pdf->setJPEGQuality(75);
				$pdf->SetXY(110, 222);
				$pdf->Image('./lib/pdf/images/firma_gerente.png', '', '', 62.04, 25.5, '', '', 'T', false, 300, '', false, false, 1, false, false, false);
			}
			// reset pointer to the last page
			$pdf->lastPage();

			// ---------------------------------------------------------

			// Close and output PDF document
			// This method has several options, check the source code documentation for more information.
			$pdf->Output('carta_laboral.pdf', 'I');

			//============================================================+
			// END OF FILE
			//============================================================+

				break;
			
			case '2':

				echo 'creando PDF DESPRENDIBLES DE PAGO';

				break;
		}

	}

//========================================================
//					Creo el PDF Empleados
//========================================================

if (isset($_POST['cobro'])) {

		//$cliente = $this->getData("SELECT nombre,empresa,ipservidor,CONCAT(FORMAT(valorAlquiler,2),' COP') as 'valorAlquiler', CONCAT(YEAR(NOW()),'-',MONTH(NOW()),'-',DAY(fechaVencimiento)) as 'desde',(DATE_ADD(CONCAT(YEAR(NOW()),'/',MONTH(NOW()),'/',DAY(fechaVencimiento)),INTERVAL 30 DAY)) as 'hasta' FROM `Clientes` where idUser=".$_POST['cliente'], FULLROWS);
			// create new PDF document
			$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

			// set document information
			$pdf->SetCreator(PDF_CREATOR);
			$pdf->SetAuthor('SomosClick S.A.S');
			$pdf->SetTitle('Documentos - Empresa');
			$pdf->SetSubject('Cobro Servidores - Clientes');
			$pdf->SetKeywords('');

			// set default header data
			$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING, array(0,0,0), array(0,0,0));
			$pdf->setFooterData(array(255,255,255), array(255,255,255));

			// set header and footer fonts
			$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
			//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

			// set default monospaced font
			$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

			// set margins
			$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
			$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
			$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

			// set auto page breaks
			$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

			// set image scale factor
			$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

			// set some language-dependent strings (optional)
			if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
				require_once(dirname(__FILE__).'/lang/eng.php');
				$pdf->setLanguageArray($l);
			}

			// ---------------------------------------------------------

			// add a page
			$pdf->AddPage();

			// set font
			$pdf->SetFont('helvetica', 'B', 20);

			//$pdf->Write(0, 'Example of HTML Justification', '', 0, 'L', true, 0, false, false, 0);

			// create some HTML content
			$html = "";

			// set core font
			$pdf->SetFont('helvetica', '', 12);

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);

			$html = "";

			// set core font
			$pdf->SetFont('helvetica', '', 12);

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);

			$html = "";

			// output the HTML content
			$pdf->writeHTML($html, true, 0, true, true);

			$pdf->setJPEGQuality(75);
			$pdf->SetXY(110, 222);
			//$pdf->Image('./lib/pdf/images/firma_gerente.png', '', '', 62.04, 25.5, '', '', 'T', false, 300, '', false, false, 1, false, false, false);

			// reset pointer to the last page
			$pdf->lastPage();

			// ---------------------------------------------------------

			// Close and output PDF document
			// This method has several options, check the source code documentation for more information.
			$pdf->Output('cobro_servidor_voip.pdf', 'I');

			//============================================================+
			// END OF FILE
			//============================================================+

	}

}
?>