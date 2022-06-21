<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<body>
<c:import url="logout-parcial.jsp"/>
<c:if test="${not empty empresa}">
<p>Empresa ${empresa} cadastrada com sucesso!</p>
</c:if>
<c:if test="${empty empresa}">
<p>Nenhuma empresa cadastrada!</p>
</c:if>

</body>
</html>
		