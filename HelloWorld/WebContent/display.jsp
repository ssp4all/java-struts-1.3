<html>
<head>
</head>
<body>
	HURRAY
	File uploaded to : <%= request.getAttribute("uploadedFilePath") %>
	<br/><br/>
	<a href="upload/<%= request.getAttribute("uploadedFileName") %>" target="_blank">Click here to download it</a>

</body>
</html>