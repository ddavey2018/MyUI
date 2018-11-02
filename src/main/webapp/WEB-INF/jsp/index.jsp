<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<%@ include file="headers/headers.jspf" %>
 <script src="../js/index.js"></script>
</head>
<body>

<form id="navi-form" method="post" action="/" style="display:none;">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<input id="page" name="page"/>
</form>
<!-- Always shows a header, even in smaller screens. -->
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
          <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
              <!-- Title -->
              <span class="mdl-layout-title">UI</span>
              <!-- Add spacer, to align navigation to the right -->
              <div class="mdl-layout-spacer"></div>
              <!-- Navigation. We hide it in small screens. -->
              <nav class="mdl-navigation mdl-layout--large-screen-only">
                <img class="mdl-chip__contact" src="../images/dan.jpeg"></img>
              </nav>
            </div>
            
          </header>
          <div class="mdl-layout__drawer">
            <span class="mdl-layout-title">Title</span>
            <nav class="mdl-navigation">
              <a class="mdl-navigation__link" href="">Link</a>
              <a class="mdl-navigation__link" href="">Link</a>
              <a class="mdl-navigation__link" href="">Link</a>
              <a class="mdl-navigation__link" href="">Link</a>
            </nav>
          </div>
          <main class="mdl-layout__content">
            <div class="page-content">
            </div>
            <div>
		<a href="${gmailUrl}">
					<button id="loginToGmail"
					class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
					Login to gmail</button></a>
					</div>
					<script>
					var code = '${code}';
					if(code){
						console.log(code);
					}</script>
          </main>
        </div>
       
        
</body>
</html>