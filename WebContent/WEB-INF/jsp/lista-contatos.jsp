<html>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<c:import url="cabecalho.jsp"/>
	<table>
	<tr>
		<th>Nome</th>
		<th>Email</th>
		<th>Endereco</th>
		<th>Nascimento</th>
	</tr>
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.nome}</td>
				
				<td>
				<c:choose>
					<c:when test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:when>
					<c:otherwise>
						E-mail não informado
					</c:otherwise>
				</c:choose>
				</td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate pattern= "dd/MM/yyyy" value="${contato.dataNascimento.time}"/></td>
				<td>
				<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<p><input type="button" value="Novo contato" onclick="window.location='http://localhost:8080/fj21-agenda/adiciona-contato.jsp';" /></p>
	<c:import url="rodape.jsp"/>
</body>
</html>