Instance: EjCirugia
InstanceOf: ProcedureCirugiaLE
Usage: #example
Title: "Cirugía Hernia Ventral"
Description: "Ejemplo de una cirugía de hernia ventral"
* id = "abfca780-745d-4c35-ae8a-fd0dbc3a9b16"

* basedOn = Reference(EjServiceRequestCirugia)

* status = #completed

* code = $snomed#39607008
* code.text = "Cirugía de hernia ventral"

* performedDateTime = "2024-12-02T10:00:00-04:00"

* performer.actor = Reference(EjPractitionerRoleAtendedor)

* category = CSTipoCirugiaPropuesta#1 "Cirugía Mayor Electiva"

* outcome = CSCondicionSalidaCirugia#1 "Vivo"

* subject = Reference(Ej1Patient)