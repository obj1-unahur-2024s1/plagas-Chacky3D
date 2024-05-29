import elementos.*

class Plaga {
	
	var poblacion
	
	method transmiteEnfermedades() { return poblacion >= 10 }
	method aumentarPoblacion() { poblacion = poblacion + poblacion * 0.1 }
	method atacar(elemento) { 
		elemento.recibirAtaqueDe(self)
		self.aumentarPoblacion()
	}
	method poblacion() { return poblacion }
	
}

class Cucarachas inherits Plaga {
	
	var pesoPromedio
	
	override method transmiteEnfermedades() { return super() and pesoPromedio >= 10 }
	method nivelDeDanio() { return poblacion / 2 }
	override method aumentarPoblacion() { 
		super()
		pesoPromedio = pesoPromedio + 2
	}
	method pesoPromedio() { return pesoPromedio }
	
}

class Pulgas inherits Plaga {
	
	method nivelDeDanio() { return poblacion * 2 }
	
}

class Garrapatas inherits Pulgas {
	
	override method aumentarPoblacion() { poblacion = poblacion + poblacion * 0.2 }
	
}

class Mosquitos inherits Plaga { 
	
	method nivelDeDanio() { return poblacion }
	override method transmiteEnfermedades() { return super() and poblacion % 3 == 0 }
	
}