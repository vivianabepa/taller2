<?php 
session_start();
if (!isset($_SESSION['contador'])) {
	$_SESSION['contador'] = 0;
}
?>
<!DOCTYPE html>
	<html lang="es">
	<head>
		<title>Tienda Online</title>
		<link rel="stylesheet" type="text/css" href="styles.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/codigo.js"></script>

	</head>
	<body>
		<header>
			<a href="index.php"><h1>Tienda Online</h1></a>
			<h2>Mejor comprar Online</h2>
			<h6>Diseño por Viviana Benavides Parra 2014</h6>
		</header>
		<section>
		<div id ="contienecarrito"
		<div id="carrito" style = "background:rgb(200,200,200);color:black;">
			Carrito
		</div>
		<a href='php/destruir.php'><button>Vaciar Carrito</button></a>
		<a href='confirmar.php'><button>ConfirmarCompra</button></a>
		</div>