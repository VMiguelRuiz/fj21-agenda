<html>
<body>
	<%@ page
		import="java.util.*,
		java.util.Date,
		java.text.SimpleDateFormat,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.*"%>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			SimpleDateFormat sdf = new SimpleDateFormat(); 
			
			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=sdf.format(contato.getDataNascimento().getTime())%></td>
		</tr>
		<%
			}
		%>
	</table>
	<input type="button" value="Novo contato" onclick="window.location='http://localhost:8080/fj21-agenda/adiciona-contato.html';"/>
</body>
</html>

