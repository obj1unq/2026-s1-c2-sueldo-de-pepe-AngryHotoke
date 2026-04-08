import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { 
		return cantidadDeFaltas 
	}
	method setCategoria(_categoria) { 
		categoria = _categoria 
	}
	method setBonoPresentismo(_bono) { 
		bonoPresentismo = _bono 
	}
	method setBonoResultado(_bono) { 
		bonoResultado = _bono 
	}
	method setCantidadDeFaltas(_cantidad) { 
		cantidadDeFaltas = _cantidad 
	}
	method bonoPresentismo() { 
		return bonoPresentismo.monto(self) 
	}
	method bonoResultado() { 
		return bonoResultado.monto(self) 
	}



	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { 
		return categoria.neto() 
	}

	method sueldo() {
		return self.sueldoNeto()+
				self.bonoPresentismo()+
				self.bonoResultado()
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}
