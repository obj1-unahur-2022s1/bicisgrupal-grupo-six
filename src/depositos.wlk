class Deposito {
	const bicicletas = [ ]
	
	method bicisRapidas(){ return bicicletas.filter({bicicleta => bicicleta.velocidadCrucero() > 25})}
	
	method marcasDeBicis(){ 
		const marcaDeBicis = bicicletas.map({bicicleta => bicicleta.marca()}).asSet()
		return marcaDeBicis.asList()
	} // No funciona en el test
	
	method esNocturno(){ return bicicletas.all({bicicleta => bicicleta.tieneLuz()})}
	
	method hayBiciParaLlevarCarga(kg){ return bicicletas.any({bicicleta => bicicleta.carga() > kg})}

	method agregarBicicleta(bicicleta){ bicicletas.add(bicicleta) }
	
	method sacarBicicleta(bicicleta){ bicicletas.remove(bicicleta)}
	
	method marcaDeBiciMasRapida(){ return (self.bicisRapidas().max()).marca()}
	
	method cargaTotalDeBicisLargas(){ return self.bicisLargas().sum({bicicleta => bicicleta.carga()})}
	
	method bicisLargas(){ return bicicletas.filter({bicicleta => bicicleta.largo() > 170}) }
	
	method cantBicisSinAccesorios(){ return bicicletas.count({bicicleta => bicicleta.cantidadDeAccesorios() == 0})}
	
	method bicisCompanieras(bici){ 
		self.sacarBicicleta(bici)
		var companiera = bicicletas.filter({bicicleta => bicicleta.marca() == bici.marca() and bicicleta.largo().between(bici.largo()-10,bici.largo()+10)})
		self.agregarBicicleta(bici)
		return companiera
		
		
	}
} 
