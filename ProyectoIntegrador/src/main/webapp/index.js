function valorEntrada(){
    var cantidad = document.getElementById("cantidad").value;
    var categoria = document.getElementById("selector");
    const valorTicket = 200;
    var valorFinal = 0;

    categoria.addEventListener("change", function(){
            const valorSelecionado = categoria.value;    
            console.log(valorSelecionado);
    });

    switch(categoria.value){
        case "Sin Categoria": 
            valorFinal = cantidad*valorTicket;
            break;
        case "Estudiante": 
            valorFinal = cantidad*(valorTicket*0.2);
            break;
        case "Trainer": 
            valorFinal = cantidad*(valorTicket*0.5);
            break;
        case "Junior": 
            valorFinal = cantidad*(valorTicket*0.85);
            break;         
    }

    document.getElementById("span").innerText = valorFinal;
}

function borrarTicket(){
		window.location="Eliminar.jsp";
	}
	
	
	document.getElementById('resumen').onclick = function(event) {
    	if (!document.getElementById('nombre').checkValidity() || !document.getElementById('mail').checkValidity() || !document.getElementById("apellido").checkValidity()) {
      	  	event.preventDefault(); // Evita que el formulario se envíe si los campos no son válidos.
        	alert('Por favor, complete todos los campos correctamente.');
    	}
    	else{
        	const btnClick = document.getElementById("resumen");
        	btnClick.addEventListener("click", valorEntrada);
     	}
    };   
    
    const eliminar = document.getElementById("borrar");
	eliminar.addEventListener("click",borrarTicket);

    
    

