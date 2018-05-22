import pacientes.*

class Enfermedad {

	var cantidadDeCelulasQueAmenaza

	method enfermarPaciente(paciente){ paciente}

	method cambia(cantidadDeCelulasQueVaAAmenazarAhora) {
		cantidadDeCelulasQueAmenaza = cantidadDeCelulasQueVaAAmenazarAhora
	}

}

class Ifecciosa inherits Enfermedad {

	override method enfermarPaciente(paciente) {
		paciente.aumentarTemperatura(cantidadDeCelulasQueAmenaza / 1000)
	}

}

class Autoinmune inherits Enfermedad {

	override method enfermarPaciente(paciente) {
		paciente.disminucionDeCelulas(cantidadDeCelulasQueAmenaza)
	}

	method reproducirse(porCuanto) {
		cantidadDeCelulasQueAmenaza * 2
	}

}

