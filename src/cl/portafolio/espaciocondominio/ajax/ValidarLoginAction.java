package cl.portafolio.espaciocondominio.ajax;

import org.apache.struts2.ServletActionContext;

import cl.portafolio.espaciocondominio.bo.LoginBO;

public class ValidarLoginAction {

	LoginBO boLogin;
	private String retorno;
	private String usuario = "";
	private String pass = "";
	
 public String execute()
 {
	 System.out.println("INGRESO AL JAVA");
	 
	 
	
	 try{
		 usuario = (String.valueOf(ServletActionContext.getRequest().getParameter("usuario")));
		 pass = (String.valueOf(ServletActionContext.getRequest().getParameter("password")));
		 
		 
		 if(usuario.equals("administrador") && pass.equals("administrador")){
			 retorno = "success";
		 }else{
			 retorno = "error";
		 }
		 
	 }catch(Exception ex){
		 
		 System.out.println("Error:"  + ex.getMessage());
		 
	 }
	 
	System.out.println("DEPURACION");
	System.out.println("Usuario: "  +usuario);
	System.out.println("Password: "  + pass);
	System.out.println("DEPURACION");  
	 
	 return retorno;
  
 }
}

