<html>
<head>
<title>TOPORAZ</title>
<meta name="layout" content="bootstrap" />
</head>
<body>
  <h1>
    ${id}
  </h1>
  <small> <g:each in="${lang}" var="ln">
      <span class="flag-icon flag-icon-${ln.lang}"></span>
      ${ln.translation} | 
  </g:each>
  </small>
  <div class="commnet">
    <h2>Comment:</h2>
    <p>
      ${comment}
    </p>
    <table class="table table-striped">
    <thead>
      <tr>
        <th>Property Name</th>
        <th>Domain Range</th>
      </tr>
    </thead>
    <tbody>
      <g:each in="${domainRanges}" var="property">
        <tr>
          <td><a href="#" title="${property.name}" data-poload="/tprz-cidoc/cidoc/propertyComment/${property.name}" data-toggle="popover" data-trigger="focus" > ${property.name}
        </a>
          </td>
          <td>
            <a href="#" title="${property.range}" data-poload="/tprz-cidoc/cidoc/classComment/${property.range}" data-toggle="popover" data-trigger="focus" >
          ${property.range}

        </a>
          </td>
        </tr>
      </g:each>
    </tbody>
  </table>

  </div>
</body>
</html>