Instance: EjServiceRequestCirugia
InstanceOf: ServiceRequestCirugiaLE
Usage: #example
Title: "ServiceRequest Cirugía LE"
Description: "Ejemplo de ServiceRequest Cirugía LE"
* id = "38a17703-0731-4c3f-88fd-1202dc99d7ce"

* identifier.value = "CIR-2024-0001"

* extension[FundamentoPriorizacion].valueString = "Paciente con dolor abdominal crónico"
* extension[RequirioComite].valueBoolean = false
* extension[TipoPriorizacion].valueCodeableConcept = CSTipoPriorizacion#5 "Usuarios con dos o más años en LE"

* status = #active

* intent = #order

* subject = Reference(Ej1Patient)

* authoredOn = "2024-12-02T10:00:00-04:00"

* reasonReference = Reference(EjConditionDiagnostico)

* priority = #routine

* category = CSTipoCirugiaPropuesta#1 "Cirugía Mayor Electiva"

* code = $snomed#39607008

* encounter = Reference(EjEncounterAtender)

* requester = Reference(EjPractitionerRoleIndicador)