object galvan {
	var sueldo = 150000
	var deuda
	var ahorros
	
	method sueldo()= sueldo
	
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	
	method totalDeuda()= deuda
	
	method totalDinero()= ahorros
	
	method cobrarSueldo(){
		ahorros += 0.max(sueldo - deuda)
		deuda = 0.max(deuda - sueldo)
	}
	
	method gastar(cuanto){
		deuda += 0.max(cuanto - ahorros)
		ahorros = 0.max(ahorros - cuanto)		
	}
	
	
}

object baigorria{
	var sueldo = 150 * self.empanadasVendidas()
	var empanadasVendidas = 0
	var totalCobrado
	
	method sueldo()= sueldo
	
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	
	method empanadasVendidas() = empanadasVendidas
	
	method venderEmpanadas(cantidad) {
			empanadasVendidas += cantidad
	}
	
	method cobrarSueldo(){
		totalCobrado += sueldo
	}
	method totalCobrado(){
		return totalCobrado
	}
	
	
}