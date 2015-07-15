<html>
<head>
<title>TOPORAZ</title>
<meta name="layout" content="bootstrap" />
</head>
<body>
  <h1>CIDOC-CRM Properties</h1>

  <table class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Comment</th>
      </tr>
    </thead>
    <tbody>
      <g:each in="${properties}" var="property">
        <tr>
          <td>
           <%--<g:link controller="icd10" action="secondLevel" params="[code:chapter.code]"> ${class."rdf-about" }</g:link>
           --%>${property.name}
          </td>
          <td>
          <g:if test="${property.comment}" >
          ${property.comment.get(0)}
           </g:if>
          </td>
        </tr>
      </g:each>
    </tbody>
  </table>
</body>
</html>