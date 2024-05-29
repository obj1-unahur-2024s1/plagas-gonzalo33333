object nivelDeProduccion{// esto es para que todas las huertas tenga el mismo nvel de produccion {}
	var property nivelDeProduccion = 0
}

class Hogar{
	var nivelDeMugre
	var confort
	
	method esBueno() = nivelDeMugre <= confort * 0.5
	
}

class Huerta{
	var produccion
	
	method esBueno() = produccion > nivelDeProduccion.nivelDeProduccion()
}

class Mascota{
	const nivelDeSalud
	
	method esBueno() = nivelDeSalud > 250
}

class Barrio{
	const elementos = []
	
	method agregarEle(nuevoEle){elementos.add(nuevoEle)}
	
	method cantidadDeBuenos() = elementos.count({r =>r.esBueno()})
	method cantidadDeNoBuenos() = elementos.count({r =>not r.esBueno()})
	
	
	method esCopado() = self.cantidadDeBuenos() > self.cantidadDeNoBuenos()
	
}