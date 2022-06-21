<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value ="/entrada" var="linkEntradaServlet"/>
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
	<c:import url="logout-parcial.jsp"/>
	<form action="${linkEntradaServlet}" method="post">
		Nome: <input type="text" name="nome"/><br>
		Data Abertura: <input type="text" name="data">
		 
		<input type="hidden" name="acao" value="NovaEmpresa"/>
		<input type="submit"/>
	</form>

</body>
</html>