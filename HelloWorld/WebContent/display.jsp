<html>
<head>
</head>
<body>
	HURRAY
	File uploaded to : <%= request.getAttribute("uploadedFilePath") %>
	<br/><br/>
	<a href="upload/<%= request.getAttribute("uploadedFileName") %>" target="_blank">Click here to download it</a>
	<img src="upload/<%= request.getAttribute("uploadedFileName") %>" alt="Not a img file"/>
</body>
</html>