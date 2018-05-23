import enfermedades.*

class Paciente {

	var property enfermedades = []
	var property temperatura = 37 // siempre en grados
	var property celulas = 15000
	
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
		if (celulas>cantidad)celulas = celulas - cantidad
		else celulas = 0
	}
	
	method serTratado(cantidad){
		enfermedades.forEach({enfermedad=>enfermedad.tratamiento(cantidad,self)})
	}
}

