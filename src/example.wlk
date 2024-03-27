object paquete{
	var estaPago = true
	var mensajero = neo
	var destino = matrix
	
	method mensajero(_mensajero){
		mensajero = _mensajero
	}
	
	method destino(_destino){
		destino = _destino
	}
	
	method estaPago(_estaPago){
		estaPago = _estaPago
	}
	
	method puedeSerEntregrado(){
		return estaPago && destino.puedePasar(mensajero)
	}
	
}

object brooklyn{
	method puedePasar(mensajero){
		return mensajero.peso() <= 1000
	}
}

object matrix{
	method puedePasar(mensajero){
		return mensajero.puedeLlamar()
	}
}

object chuck{
	
	method peso(){
		return 900
	}
	
	method puedeLlamar(){
		return true
	}
}

object neo{
	var tieneCredito = true
	
	method tieneCredito(_tieneCredito){
		tieneCredito = _tieneCredito
	}
	
	method puedeLlamar(){
		return tieneCredito
	}
	
	method peso(){
		return 0
	}
}

object hawk{
	var peso = 0
	var vehiculo = bici
	
	method peso(_peso){
		peso = _peso
	}
	
	method vehiculo(_vehiculo){
		vehiculo = _vehiculo
	}
	
	method peso(){
		return peso + vehiculo.peso()
	}
	
	method puedeLlamar(){
		return false
	}
	
}

object bici{
	method peso(){
		return 10
	}
}

object camion{
	var acoplados = 0
	
	method acoplados(_acoplados){
		acoplados = _acoplados
	} 
	
	method pesoAcoplados(){
		return acoplados * 500
	}
	
	method peso(){
		return 500 + self.pesoAcoplados()
	}
}

