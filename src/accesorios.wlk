class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canasto{
	var volumen
	
	method peso() = volumen/10
	method carga()= volumen *2
	method esLuminoso() = false
}

class Morral{
	var largo
	var tieneOjoGato
	
	method peso() = 1.2
	method carga() = largo/3
	method esLuminoso() = tieneOjoGato
}