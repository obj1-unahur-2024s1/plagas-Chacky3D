class Hogar {
	
	var nivelDeMugre
	const confort
	
	method esBueno() { return nivelDeMugre <= confort / 2 }
	method recibirAtaqueDe(plaga) { nivelDeMugre = nivelDeMugre + plaga.nivelDeDanio() }
	method nivelDeMugre() { return nivelDeMugre }
	
}

class Huerta {
	
	var capacidadDeProduccion

	method esBueno() { return capacidadDeProduccion > nivel.valor() }
	method recibirAtaqueDe(plaga) {
		const danio = plaga.nivelDeDanio() * 0.1
		capacidadDeProduccion = if(plaga.transmiteEnfermedades()) capacidadDeProduccion - danio - 10 else capacidadDeProduccion - danio
	}
	method capacidadDeProduccion() { return capacidadDeProduccion }
	
}

class Mascota {
	
	var nivelDeSalud
	
	method esBueno() { return nivelDeSalud > 250 }
	method recibirAtaqueDe(plaga) { nivelDeSalud = if(plaga.transmiteEnfermedades()) nivelDeSalud - plaga.nivelDeDanio() else nivelDeSalud }
	method nivelDeSalud() { return nivelDeSalud }
	
}

object nivel {
	var valor = 1000
	
	method valor() { return valor }
	method valor(nuevoValor) { valor = nuevoValor }
}