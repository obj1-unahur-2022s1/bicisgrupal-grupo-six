/* 5 - UNA PREGUNTA :
 Hay que agregar un nuevo atributo para todos los accesorios respetando el polimorfismo, 
 y la bicicleta podra hacer uso de este nuevo atributo agregando un metodo que lo utilice.
 */


class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canasto{
	var volumen
	
	method peso() = volumen/10
	method carga()= volumen *2
	method esLuminoso()= false
}

class Morral{
	var largo
	var tieneOjoGato
	
	method peso() = 1.2
	method carga() = largo/3
	method esLuminoso() = tieneOjoGato
}