<!--Validador Rut-->
function revisarDigito(dvr)
{
        dv = dvr + ""
        if( dv != '0' && dv != '1' && dv != '2' && dv != '3' && dv != '4' && dv != '5' && dv != '6' && dv != '7' && dv != '8' && dv != '9' && dv != 'k'  && dv != 'K')
        {
				document.getElementById("msnError").className="needsfilled";
				document.getElementById("msnError").value="Ingresa un Rut válido"; 
				return false
}
        return true;
}

function revisarDigito2(crut)
{
        largo = crut.length;
        if(largo<2)
        {			
				document.getElementById("msnError").className="needsfilled";
				document.getElementById("msnError").value="Ingresa un Rut válido";
				return false
        }
        if(largo>2)
                rut = crut.substring(0, largo - 1);
				else
                rut = crut.charAt(0);
        		dv = crut.charAt(largo-1);
        		revisarDigito( dv );
        if ( rut == null || dv == null )
                return 0
                var dvr = '0'
                suma = 0
                mul  = 2
                for (i= rut.length -1 ; i >= 0; i--){
                        suma = suma + rut.charAt(i) * mul
                        if (mul == 7)
                                mul = 2
                                else
                                mul++
                }
                res = suma % 11
                if (res==1)
                        dvr = 'k'
                        else if (res==0)
                                dvr = '0'
                                else
                                {
                                        dvi = 11-res
                                        dvr = dvi + ""

                                }
                                if ( dvr != dv.toLowerCase() )
                                {									
										document.getElementById("msnError").className="needsfilled";						
										document.getElementById("msnError").value="Ingresa un Rut válido"; 
                                        return false
                                }
                                return true
}

function Rut(texto)
{
        var tmpstr = "";
		for ( i=0; i < texto.length ; i++ )
                if ( texto.charAt(i) != ' ' && texto.charAt(i) != '.' && texto.charAt(i) != '-' )
                        tmpstr = tmpstr + texto.charAt(i);
                texto = tmpstr;
        largo = texto.length;
        if ( largo < 2 )
        {
				document.getElementById("msnError").className="needsfilled";	
				document.getElementById("msnError").value="Debes ingresar tu Rut"; 
                return false
        }
        for (i=0; i < largo ; i++ )
        {
                if ( texto.charAt(i) !="0" && texto.charAt(i) != "1" && texto.charAt(i) !="2" && texto.charAt(i) != "3" && texto.charAt(i) != "4" && texto.charAt(i) !="5" && texto.charAt(i) != "6" && texto.charAt(i) != "7" && texto.charAt(i) !="8" && texto.charAt(i) != "9" && texto.charAt(i) !="k" && texto.charAt(i) != "K" )
                {
						document.getElementById("msnError").className="needsfilled";
						document.getElementById("msnError").value="Ingresa un Rut válido";
                        return false
                }
        }
        var invertido = "";
        for ( i=(largo-1),j=0; i>=0; i--,j++ )
                invertido = invertido + texto.charAt(i);
        var dtexto = "";
        dtexto = dtexto + invertido.charAt(0);
        dtexto = dtexto + '-';
        cnt = 0;
        for ( i=1,j=2; i<largo; i++,j++ )
        {
                if ( cnt == 3 )
                {
                        dtexto = dtexto + '.';
                        j++;
                        dtexto = dtexto + invertido.charAt(i);
                        cnt = 1;
                }
                else
                {
                        dtexto = dtexto + invertido.charAt(i);
                        cnt++;
                }
        }
        invertido = "";
        for ( i=(dtexto.length-1),j=0; i>=0; i--,j++ )
                invertido = invertido + dtexto.charAt(i);
        window.document.form1.rut.value = invertido.toUpperCase()
        if(revisarDigito2(texto))
                return true;
        return false;
}

<!--Validador genero-->
function check() {
var r = document.getElementsByName("c")
var c = -1

for(var i=0; i < r.length; i++){
   if(r[i].checked) {
      document.getElementById("errorCheck").className = "ocultarerror";
	  document.getElementById("errorHide").style.display="block";
	  return true
   }
}
if (c == -1) 
document.getElementById("errorCheck").className = "mostrarerror";
document.getElementById("errorHide").style.display="none";
return false
}

<!--Validador mail-->	 
function ValidateEmail(email)   
{  
	if (document.getElementById("mailError").value=="")
	 {
		document.getElementById("mailError").className="needsfilled";					
	  	document.getElementById("mailError").value="Ingresa tu e-mail"; 	
		return false;
	 } 
	
    if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.email.value)) 
      {  
	   	document.getElementById("mailError").className="needsfilled";					
	  	document.getElementById("mailError").value="Ingresa un e-mail válido"; 	
		return false
      }  
	  return false;
}  


<!--Enviar si esta correcto-->
$(document).ready(function() {
	 $("#form1").submit(function(){
			if (($(":input").hasClass("needsfilled"))||($("#errorCheck").hasClass("mostrarerror"))) {	                           
			return false;
	}
    });
});

<!--Limpiar Campos-->
   $(document).ready(function(){
    	$("#msnError, #mailError").click(function() {
    	$(this).removeClass("needsfilled");
		$(this).addClass("campoTexto");
     	$(this).val("");
    	});
    });	