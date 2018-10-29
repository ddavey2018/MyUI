<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../js/jquery-3.3.1.min.js"></script>

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	type="text/css">
<link rel="stylesheet" href="../mdl/material.min.css">
<script src="../mdl/material.min.js"></script>
<link rel="stylesheet" href="../mdl/material-icons.css">
<link rel="stylesheet" href="../css/interface.css">
<link rel="stylesheet" href="../mdl/getmdl-select.min.css">
<script defer src="../mdl/getmdl-select.js"></script>
<script src="../js/components/popup.js"></script>
<script src="../js/interface/interface.js"></script>
<link rel="stylesheet" href="../css/popup.css">
<script src="../js/interface/header.js"></script>
</head>
<body>
	<div class="side-panel-holder fixed-right">
		<div id="layout-card"
			class="side-panel fixed-right mdl-card mdl-shadow--4dp">
			<div class="mdl-card__title">
				<h2 class="mdl-card__title-text">Layout</h2>
			</div>
			<div class="mdl-card__supporting-text">
				<button id="edit-header" class="mdl-button mdl-js-button mdl-button--primary">Edit Header</button>
			</div>
		</div>
	</div>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
	 	<header class="mdl-layout__header">
	    		<div class="mdl-layout__header-row">
	    			<span class="mdl-layout-title">Title</span>
	    		</div>
    		</header>
		<main class="mdl-layout__content">
		<div class="page-content no-content">
			<!-- Your content goes here -->
		</div>
		</main>
	</div>
</body>
</html>