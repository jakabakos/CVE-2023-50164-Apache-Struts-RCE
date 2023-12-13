<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>File Upload - Error</title>
</head>
<body>
<h2>File Upload - Error</h2>

<p>An error occurred while processing the file.</p>

<!-- Display error messages -->
<s:if test="hasActionErrors()">
  <ul>
    <s:iterator value="actionErrors">
      <li><s:property /></li>
    </s:iterator>
  </ul>
</s:if>

<br/>
<s:url var="uploadActionUrl" action="upload"/>
<a href="<s:property value='#uploadActionUrl'/>">Go back to Upload Page</a>

</body>
</html>
