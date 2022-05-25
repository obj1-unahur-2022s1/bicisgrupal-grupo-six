class Deposito {
	const bicicletas = [ ]
	
	method bicisRapidas(){ return bicicletas.filter({bicicleta => bicicleta.velocidadCrucero() > 25})}
	
	method bicicletasConMarca(){ return bicicletas.map({bicicleta => bicicleta.marca()})} // Devuelve repetidos
	
	method esNocturno(){ return bicicletas.all({bicicleta => bicicleta.tieneLuz()})}
	
	method hayBiciParaLlevarCarga(kg){ return bicicletas.any({bicicleta => bicicleta.carga() > kg})}

	method agregarBicicleta(bicicleta){ bicicletas.add(bicicleta) }
}
