class Plagas {
	var poblacion
	
	method transmitirEnfermedades() = poblacion >= 10
}


class Cucarachas inherits Plagas{
	var pesoPromedio
	method nivelDeDanio() = poblacion / 2
	override method transmitirEnfermedades() = super() and pesoPromedio >= 10 
}

class Pulgas inherits Plagas{
	method nivelDeDanio() = poblacion * 2
	
}

class Garrapatas inherits Pulgas{
	
}

class Mosquitos inherits Plagas{
	method nivelDeDanio() = poblacion
	override method transmitirEnfermedades() = super() and poblacion % 3 == 0
}
