

object paquete{
	
	
	method puedeSerEntregradoPor(mensajero){
		
	}
	
}

object mensajero{
	
}

object puenteBrooklyn{
	method puedePasar(mensajero){
		return mensajero.peso() <= 1000
	}
}

object chuckNorris{
	method peso(){
		return 900
	}
	
	method puedeLlamar(){
		return true
	}
}