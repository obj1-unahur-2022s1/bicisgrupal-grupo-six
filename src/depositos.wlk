import bicis.*
import accesorios.*

class Deposito {
	const bicicletas = [ ]
    var primeraBiciConLuz = null
    var seHizoLaLuz = false
	
	method bicisRapidas(){ return bicicletas.filter{bicicleta => bicicleta.velocidadCrucero() > 25}}
	
	method marcasDeBicis(){
		return bicicletas.map{bicicleta => bicicleta.marca()}.asSet().asList()
	} 
	
	method esNocturno(){ return bicicletas.all{bicicleta => bicicleta.tieneLuz()}}
	
	method hayBiciParaLlevarCarga(kg){ return bicicletas.any{bicicleta => bicicleta.carga() > kg}}

	method agregarBicicleta(bicicleta){
        if(primeraBiciConLuz == null and bicicleta.tieneLuz()){
                primeraBiciConLuz = bicicleta
                seHizoLaLuz = true
        }
        if(primeraBiciConLuz != null and !bicicleta.tieneLuz()){
                seHizoLaLuz = false
        }
        bicicletas.add(bicicleta)
    }
	
	
	method sacarBicicleta(bicicleta){ bicicletas.remove(bicicleta)}
	
	method marcaDeBiciMasRapida(){ return self.bicisRapidas().max{bici =>bici.velocidadCrucero()}.marca()}
	
	method cargaTotalDeBicisLargas(){ return self.bicisLargas().sum{bicicleta => bicicleta.carga()}}
	
	method bicisLargas(){ return bicicletas.filter({bicicleta => bicicleta.largo() > 170}) }
	
	method cantBicisSinAccesorios(){ return bicicletas.count({bicicleta => bicicleta.cantidadDeAccesorios() == 0})}
	
	method bicisCompanieras(bici){ 
		const companieras = bicicletas.filter({bicicleta => bicicleta.marca() == bici.marca() and bicicleta.largo().between(bici.largo()-10,bici.largo()+10)})
		companieras.remove(bici)
		return companieras
	}
		
	
	method hayBicisCompanieras(){

        return bicicletas.any{ bici => self.bicisCompanieras(bici).size()>0 }
	}
	
	method tieneBicisCompanieras(bici){
		return self.bicisCompanieras(bici).size() > 0
	}
	
	method parejasDeCompanieras(){

		const list = bicicletas.filter{bici =>self.tieneBicisCompanieras(bici)}
		const parBicis = list.map{bici => self.paresDeBicis(bici)}
		return parBicis.map{ item=>item.get(0) }
		

	}
	
	method seHizoLaLuz() = seHizoLaLuz		
	
	
	
	method paresDeBicis(bici) {
		const lista = self.bicisCompanieras(bici)
		return lista.map{ biciPar => new ParDeBici(bicis = [bici,biciPar])}
			
	}
} 

class ParDeBici{
	const bicis = []
	method bicis() = bicis
}

















