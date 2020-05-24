<%@ taglib uri="http://struts.apache.org/tags-html" prefix="h"%>
 

Welcome to Struts!

<h:form action="/hello">

	<h:text property="name" />
	<h:submit />
 
	<hr />
	<h:errors />
</h:form> 
