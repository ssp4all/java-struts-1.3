<%@ taglib uri="http://struts.apache.org/tags-html" prefix="s"%>

INDEX.JSP

File Upload with Struts 1.x
<%-- <s:form action="uploadFile" enctype="multipart/form-data" method="post">
 --%>
 <s:form action="/imgUpload">
	<s:file property="filename" />
	<s:submit />
</s:form>

WELCOME to INDEX page
<!-- <img src="images/shit.png"/>-->

