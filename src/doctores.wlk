import pacientes.*

class Doctor inherits Paciente {

	var cantidadDeMedicinaQueSuministra
	var property pacientes = []
	
	method agregarPaciente(paciente){
		pacientes.add(paciente)
	}
	method tratarse() {
		self.tratarPaciente(self)
	}

	method tratarPaciente(paciente) {
		paciente.serTratado(cantidadDeMedicinaQueSuministra)
	}

}

class JefeDeDepartamento inherits Paciente {

	var doctoresSubordinados = []

	method agregarSubordinados(doctor) {
		doctoresSubordinados.add(doctor)
	}

	method tratarPaciente(paciente) {
		doctoresSubordinados.filter({c=>c.pacientes().contain(paciente)})
				.tratarPaciente(paciente)
	}

}

