<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>File Upload - Success</title>
</head>
<body>
<h2>File Upload - Success</h2>

<s:if test="hasActionMessages()">
    <s:iterator value="actionMessages">
        <s:property />
    </s:iterator>
</s:if>

<s:if test="hasActionErrors()">
    <s:iterator value="actionErrors">
        <s:property />
    </s:iterator>
</s:if>

<br/>
<s:url var="uploadActionUrl" action="upload"/>
<a href="<s:property value='#uploadActionUrl'/>">Go back to Upload Page</a>

</body>
</html>
