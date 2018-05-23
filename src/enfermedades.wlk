import pacientes.*

class Enfermedad {

	var property cantidadDeCelulasQueAmenaza

	method enfermarPaciente(paciente)

	method cambia(cantidadDeCelulasQueVaAAmenazarAhora) {
		cantidadDeCelulasQueAmenaza = cantidadDeCelulasQueVaAAmenazarAhora
	}

	method tratamiento(cantidad, paciente) {
		if (cantidad < cantidadDeCelulasQueAmenaza) cantidadDeCelulasQueAmenaza = cantidadDeCelulasQueAmenaza - (cantidad) * 15 
		else paciente.enfermedades().remove(self)
	}

}

class Infecciosa inherits Enfermedad {

	override method enfermarPaciente(paciente) {
		paciente.aumentarTemperatura(cantidadDeCelulasQueAmenaza / 1000)
	}

	method reproducirse() {
		cantidadDeCelulasQueAmenaza = cantidadDeCelulasQueAmenaza * 2
	}

}

class Autoinmune inherits Enfermedad {

	override method enfermarPaciente(paciente) {
		paciente.disminucionDeCelulas(cantidadDeCelulasQueAmenaza)
	}

}

object laMuerte inherits Enfermedad {

	override method enfermarPaciente(paciente) {
		paciente.temperatura(0)
	}
	
	override method cambia(cantidadDeCelulasQueVaAAmenazarAhora){
		
	}
}

