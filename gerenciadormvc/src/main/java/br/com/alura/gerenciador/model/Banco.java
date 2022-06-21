package br.com.alura.gerenciador.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

public class Banco {

	/* <Empresa> este trecho indica que a lista 
	 * só aceitará objetos da classe Empresa;
	 */
	private static List<Empresa> lista = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	private static List<Usuario> listaUsuarios = new ArrayList<>();
	
	static {
		Empresa empresa = new Empresa();
		empresa.setNome("Amazon");
		empresa.setId(Banco.chaveSequencial++);
		Empresa empresa2 = new Empresa();
		empresa2.setNome("Google");
		empresa2.setId(Banco.chaveSequencial++);
		lista.add(empresa);
		lista.add(empresa2);
		
		Usuario u1 = new Usuario();
		u1.setLogin("oziel");
		u1.setSenha("12345");
		
		Usuario u2 = new Usuario();
		u2.setLogin("beka");
		u2.setSenha("12345");
		
		listaUsuarios.add(u1);
		listaUsuarios.add(u2);
	}
	
	public void adiciona(Empresa empresa) {
		empresa.setId(chaveSequencial++);
		lista.add(empresa);
	}
	
	public List<Empresa> getEmpresas(){
		/* Não cabe a palavra-chave "this", uma vez que
		 * o atributo "lista" pertence à classe, não
		 * às suas instâncias.
		 */
		return Banco.lista;
	}

	public void removeEmpresa(Integer id) {
		
		Iterator<Empresa> it = lista.iterator();
		
		while(it.hasNext()) {
			Empresa emp = it.next();
			
			if(emp.getId() == id) {
				it.remove();
			}
		}
		
	}

	public Empresa buscaEmpresaPelaId(Integer id) {
		for (Empresa empresa : lista) {
			if(empresa.getId() == id) {
				return empresa;
			}
		}
		return null;	
	}

	public Usuario existeUsuario(String login, String senha) {
		for (Usuario usuario : listaUsuarios) {
			if(usuario.eIgual(login, senha)) {
				return usuario;
			}
		}
		return null;
			
		
		
	}
	
}
