<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.model.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Tag Library</title>
</head>
<body>
	<c:import url="logout-parcial.jsp"/>
	<c:if test="${not empty empresa}">
	Empresa ${empresa} cadastrada com sucesso!
	</c:if>
	
	Lista de empresas: <br/>
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" 
			pattern="dd/MM/yyyy"/>
			<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">editar </a>
			<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
			</li><!-- implícitamente,
			essa ExpressionLanguage chama o método getNome()
			da classe Empresa. -->
			
		</c:forEach>
	</ul>

</body>
</html>