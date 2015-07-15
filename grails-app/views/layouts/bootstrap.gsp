<%@ page import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes"%>
<!doctype html>
<html lang="en">
<head>
<title><g:layoutTitle default="CIDOC-CRM" /></title>
<asset:stylesheet src="application.css" />
<g:layoutHead />
</head>

<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${request.contextPath}">Toporaz - CIDOC-CRM Evaluation</a>
      </div>

      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li ><g:link controller="cidoc" action="index">Classes </g:link></li>
          <li><g:link controller="cidoc" action="properties">Properties</g:link></li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span
              class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li class="divider"></li>
              <li><a href="#">Separated link</a></li>
              <li class="divider"></li>
              <li><a href="#">One more separated link</a></li>
            </ul></li>
        </ul>
        <form class="navbar-form navbar-left" role="search">
          <div class="form-group">
            <input class="form-control" placeholder="Search" type="text">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Link</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container">
    <g:layoutBody />

    <hr>

    <footer>
      <p>&copy; FIZ-ARB 2015</p>
    </footer>
  </div>

  <asset:javascript src="application.js" />

</body>
</html>