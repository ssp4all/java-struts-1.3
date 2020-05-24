<%-- <%@ taglib uri="http://struts.apache.org/tags-html" prefix="s"%>

INDEX.JSP

File Upload with Struts 1.x
<s:form action="uploadFile" enctype="multipart/form-data" method="post">

 <s:form action="/index" method="post" enctype="multipart/form-data">
	<s:file property="file" />
	<s:submit />
</s:form>

WELCOME to INDEX page
<!-- <img src="images/shit.png"/>-->

 --%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<html>
<head>
</head>
<body>
	<h1>
		<bean:message key="label.common.title" />
	</h1>

	<html:messages id="err_name" property="common.file.err">
		<div style="color: red">
			<bean:write name="err_name" />
		</div>
	</html:messages>
	<html:messages id="err_name" property="common.file.err.ext">
		<div style="color: red">
			<bean:write name="err_name" />
		</div>
	</html:messages>
	<html:messages id="err_name" property="common.file.err.size">
		<div style="color: red">
			<bean:write name="err_name" />
		</div>
	</html:messages>

	<html:form action="/index" method="post" enctype="multipart/form-data">
		<br />
		<bean:message key="label.common.file.label" /> : <html:file
			property="file" size="50" />
		<br />
		<br />
		<html:submit>
			<bean:message key="label.common.button.submit" />
		</html:submit>

	</html:form>


</body>
</html>