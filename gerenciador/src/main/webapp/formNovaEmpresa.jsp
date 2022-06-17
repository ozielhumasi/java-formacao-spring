<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value ="/novaEmpresa" var="linkServletNovaEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- O atributo "action" indica para onde será enviado
	o formulário. Nesse cas, encaminhamos para esta URL, que
	foi criada na classe NovaEmpresaServlet e executa o método
	service -->
	
	<form action="${linkServletNovaEmpresa}" method="post">
		Nome: <input type="text" name="nome"/><br>
		Data Abertura: <input type="text" name="data"> 
		
		<input type="submit"/>
	</form>

</body>
</html>