import enfermedades.*

class Paciente {

	var property enfermedades = []
	var property temperatura = 37 // siempre en grados
	var property celulas = 5000000

	method contraerEnfermedad(enfermedad) {
		enfermedades.add(enfermedad)
	}

	method vivirUnDia() {
		enfermedades.forEach({ enfermedad => enfermedad.enfermarPaciente(self)})
	}

	method cambiaLaEnfermedad(enfermedad, celulasQueAmenaza) {
		enfermedad.cambia(celulasQueAmenaza)
	}

	method aumentarTemperatura(cantidad) {
		temperatura = temperatura + cantidad
	}

	method disminucionDeCelulas(cantidad) {
		celulas = celulas - cantidad
	}

}

