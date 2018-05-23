import pacientes.*

class Doctor inherits Paciente {

	var cantidadDeMedicinaQueSuministra
	var pacientes = []

	method tratarse() {
		self.tratarPaciente(self)
	}

	method tratarPaciente(paciente) {
		paciente.serTratado(cantidadDeMedicinaQueSuministra)
	}

}

class JefeDeDepartamento inherits Paciente {
	
	var doctoresSubordinados = []
	
	method agregarSubordinados(doctor){
		doctoresSubordinados.add(doctor)
	}
	method tratarPaciente(paciente) {
	}

}

