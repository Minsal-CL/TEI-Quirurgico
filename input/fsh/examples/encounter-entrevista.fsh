Instance: EjEncounterEntrevista
InstanceOf: EncounterEntrevistaLE
Usage: #example
Title: "Encounter Entrevista LE"
Description: "Ejemplo de Encounter Entrevista LE"
* id = "6c7dae68-552d-44cb-b414-e5024ae8e0a0"

* extension[EnCondicionCirugia].valueBoolean = true

* extension[ExtensionResultadoEvaluacionPreQx].valueCodeableConcept = CSResultadoEvaluacionPreQuirurgica#1 "El Paciente requiere intervención quirúrgica."

* status = #finished

* class = CSModalidadAtencionCodigo#1 "Presencial"

* identifier.value = "1234567890"

* subject = Reference(Ej1Patient)

* period.start = "2024-12-02T10:00:00-04:00"

* appointment = Reference(EjAgendaEntrevistaPreQuirurgica)

* participant.individual = Reference(EjPractitionerRoleEntrevistador)

* basedOn = Reference(EjServiceRequestCirugia)