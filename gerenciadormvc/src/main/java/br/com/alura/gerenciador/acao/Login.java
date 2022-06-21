package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.model.Banco;
import br.com.alura.gerenciador.model.Usuario;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		System.out.println("Logando " + login);
		
/* Preciso consultar minha ArrayList para verificar se lá dentro
 * tem algum usuário que possui o mesmo login e senha inseridos no
 * formulário.
 */
		Banco banco = new Banco();
		Usuario usuario = banco.existeUsuario(login,senha);
		
		if(usuario!=null) {
			System.out.println("Usuário existe!");
			
			/* O objeto criado abaixo subsiste mesmo após várias re-
			 * quisições. Dessa forma, o atributo que penduramos na
			 * sessão perdurará após várias requisições, oq q não
			 * ocorreria se pendurássemos esse atributo da forma seguinte
			 * request.setAttribute("usuarioLogado", usuario);
			 * No código acima, o atributo ficaria pendurado apenas
			 * durante uma requisição.
			 */
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuarioLogado", usuario);
			return "redirect:entrada?acao=ListaEmpresas";
		} else {
			return "forward:/formLogin.jsp";
		}
		
		
	}

}
