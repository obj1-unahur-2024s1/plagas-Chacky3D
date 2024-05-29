import elementos.*

class Barrio {
	
	const elementos = []
	
	method agregar(elemento) { elementos.add(elemento) }
	method agregarVarios(_elementos) { elementos.addAll(_elementos) }
	method remover(elemento) { elementos.remove(elemento) }
	
	method cantidadElementosBuenos() { return elementos.count({ elemento => elemento.esBueno() }) }
	method cantidadElementosNoBuenos() { return elementos.count({ elemento => !elemento.esBueno() }) }
	method esCopado() { return self.cantidadElementosBuenos() > self.cantidadElementosNoBuenos() }
	
}