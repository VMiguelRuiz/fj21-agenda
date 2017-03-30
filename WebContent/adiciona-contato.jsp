<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<html>
	<c:import url="cabecalho.jsp" />
	<head>
		<meta charset="utf-8">
		<link href="css/jquery.css" rel="stylesheet">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
	</head>
		<body>
			<h3>Adicionar Contatos</h3>
			<form action = "adicionaContato" method="post">
				<p>Nome: <input type ="text" name="nome" /><br /></p>
				<p>E-mail: <input type ="text" name="email" /><br /></p>
				<p>Endereço: <input type ="text" name="endereco" /><br /></p>
				<p>Data Nascimento:  <caelum:campoData id="dataNascimento" /><br /></p>
				<input type="submit" value="Gravar" />
				<input type="button" value="Contatos" onclick="window.location='http://localhost:8080/fj21-agenda/mvc?logica=ListaContatosLogic';"/>
			</form>
		</body>
		<c:import url="rodape.jsp"/>
</html>
