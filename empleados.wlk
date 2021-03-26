object galvan {
	var sueldo = 15000
	var totalDeuda = 0
	var totalDinero = 0
	
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
	
	method gastar(cuanto){
		if(totalDinero>cuanto){
			totalDinero -= cuanto
		}
		else{
			totalDinero -= cuanto
			totalDeuda += totalDinero.abs()
			totalDinero = 0	
		}
	}
	
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method cobrar(cuanto){
		if(totalDeuda >= 0){
			totalDeuda -= cuanto
			if(totalDeuda<0){
				totalDinero += totalDeuda.abs()
				totalDeuda = 0
			}
		}
		else{
			totalDinero += cuanto
		}
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	const montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrar(cuanto){
		totalCobrado += cuanto
	}
	
	method totalCobrado() = totalCobrado
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	
	method pagarSueldo(empleado){
		const sueldoAPagar = empleado.sueldo()
		dinero = dinero - sueldoAPagar
		empleado.cobrar(sueldoAPagar)
	}
	
	
}
