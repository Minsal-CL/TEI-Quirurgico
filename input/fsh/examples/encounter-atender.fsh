Instance: EjEncounterAtender
InstanceOf: EncounterAtenderLE
Usage: #example
Title: "Encounter Atender LE"
Description: "Ejemlo de Encounter Atender LE"
* id = "23b7f034-a998-44d7-9be4-0281be8222c0"

* status = #finished

* class = CSModalidadAtencionCodigo#1 "Presencial"

* identifier.value = "ENC-20241130-001"

* diagnosis[0].condition = Reference(EjConditionDiagnostico)

* subject = Reference(Ej1Patient)

* period.start = "2024-11-30T10:00:00-04:00"

* type = CSTipoConsulta#1 "Nueva"

* basedOn.identifier.value = "SR-20241115-086"

* participant.individual = Reference(EjPractitionerRoleIndicador)