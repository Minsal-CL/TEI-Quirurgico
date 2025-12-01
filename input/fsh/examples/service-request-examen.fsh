Instance: EjSolicitudExamen
InstanceOf: ServiceRequestExamenLE
Usage: #example
Title: "Solicitud Examen"
Description: "Ejemplo de Solicitud Examen"
* id = "aecacd57-d7cf-4cb7-8bfd-339dc53d6e83"

* identifier.value = "EX-2024-0001"

* status = #active

* intent = #order

* subject = Reference(Ej1Patient)

* requester = Reference(EjMedicoCirujanoGastroenterologo)

* reasonCode.text = "Dolor abdominal crónico"

* note.text = "Paciente con dolor abdominal crónico"

* code = $loinc#24558-9

* encounter = Reference(EjEncounterAtender)

* authoredOn = "2024-12-02T10:00:00-04:00"