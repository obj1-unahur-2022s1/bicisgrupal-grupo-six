class Bicicleta{
	var  rodado
	var  largo
	const marca
	const accesorios = []
	
	method altura() = rodado * 2.5 + 15
	
	method velocidadCrucero(){
		if (largo > 120 ) return rodado + 6
		else return rodado + 2
	}
	
	method carga(){ return accesorios.sum{acc=>acc.carga()} }
	
	method peso(){ return rodado / 2 + self.pesoTotalAccesorios() }
	
	method largo(){ return largo }
	
	method tieneLuz(){ return accesorios.any{acc=>acc.esLuminoso()} }
	
	method cantidadDeAccesorios(){ return accesorios.size()}
	
	method cantidadAccesoriosLivianos(){ return accesorios.count{acc=>acc.peso() < 1} }
	
	method agregarAccesorio(accesorio){ accesorios.add(accesorio)}
	
	method marca(){ return marca }
	
	method pesoTotalAccesorios(){ return accesorios.sum{acc => acc.peso()} }
}