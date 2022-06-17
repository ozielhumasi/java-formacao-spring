<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value ="/alteraEmpresa" var="linkServletAlteraEmpresa"/>
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
	
	<form action="${linkServletAlteraEmpresa}" method="post">
		Nome: <input type="text" name="nome" value="${empresa.nome}"/><br>
		Data Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/> 
		<input type="hidden" value="${empresa.id}" name="id"/>
		<input type="submit"/>
	</form>

</body>
</html>