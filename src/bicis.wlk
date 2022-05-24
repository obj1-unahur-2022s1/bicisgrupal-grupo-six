class Bicicleta{
	var rodado
	var largo
	const marca
	const accesorios = []
	
	method altura() = rodado * 2.5 + 15
	
	method velocidadCrucero(){
		if (largo > 120 ) return rodado + 6
		else return rodado + 2
	}
	
	method carga(){
		return accesorios.sum{acc=>acc.carga()}
	}
	
	method peso(){
		return rodado / 2 + accesorios.pesoTotal()
	}
	
	method tieneLuz(){
		return accesorios.ant{acc=>acc.esLuminoso()}
	}
	
	method cantidadAccesoriosLivianos(){
		return accesorios.count{acc=>acc.peso() < 1}
	}
}