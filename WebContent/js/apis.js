
var txtUsuario = "";
var txtContrasena = "";

function setLoginInformation(){
	
	 txtUsuario = $("#txtUsuario").val();
	 txtContrasena = $("#exampleInputPassword1").val();
	console.log('entro al api.js');
	$.ajax({
        url: 'getLogin.action',
        type: "POST",
        data: {
            usuario: txtUsuario,
            password: txtContrasena, 
           
        },
        beforeSend: function(xhr) {
           $("#idInicio").html('');
           $("#idInicio").html('Iniciando Sesión');
        },
        complete: function(data) {
        	 $("#idInicio").html('');
             $("#idInicio").html('Bienvenido');
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
        	$("#idInicio").html('');
            $("#idInicio").html(textStatus);
        },
        success: function(data) {
        	$(location).attr('href',url='home.jsp');
        }
    });
	
	
}
	
	
	
	
	
	


