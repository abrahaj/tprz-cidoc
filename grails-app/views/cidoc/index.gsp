<html>
<head>
<title>CIDOC-CRM Entities</title>
<meta name="layout" content="bootstrap" />
</head>
<body>
  <h1>CIDOC-CRM Classes</h1>
  <div class="all-questions" />
<article>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Comment</th>
        <th>Domain Properties</th>
      </tr>
    </thead>
    <tbody>
      <g:each in="${classes}" var="classNode">
        <tr>
          <td><a name="${classNode.name}"></a> <g:link controller="cidoc" action="classInformation" params="[id: classNode.name]">
              <h3 id="${classNode.name}">
                ${classNode.name.replace("_"," ")}
              </h3>
            </g:link> <g:if test="${classNode?.subclasses}">
              <br>Subclass of:<br>
            </g:if> <g:each in="${classNode?.subclasses}" var="sub">
              <g:link controller="cidoc" action="classInformation" params="[id: sub]">
                ${sub}
              </g:link><br/>
            </g:each></td>
          <td>
            ${classNode.comment.toString()}
          </td>
          <td><g:each in="${classNode.domainProperties}" var="property">

              <a href="#" title="${property.attributes()."rdf:about"}" data-poload="/tprz-cidoc/cidoc/propertyComment/${property.attributes()."rdf:about"}"
                data-toggle="popover" data-trigger="focus"> ${property.attributes()."rdf:about"}
              </a>
              <br />
            </g:each></td>
        </tr>
      </g:each>
    </tbody>
  </table>
  </article>
</body>
</html>