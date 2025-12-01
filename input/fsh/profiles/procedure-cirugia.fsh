Profile: ProcedureCirugiaLE
Parent: Procedure
Id: ProcedureCirugiaLE
Title: "Procedure Cirugia LE"
Description: "Recursos que se utilizan para representar la intervención quirúrgica realizada al paciente."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* basedOn 1..1 MS
* basedOn ^short = "Referencia a la solicitud de cirugía que originó el procedimiento"
* basedOn only Reference(ServiceRequestCirugiaLE)

* status 1..1 MS
* status ^short = "Indica si la cirugía fue realizada o no: completed | not-done"

* code 1..1 MS
* code ^short = "Código de la cirugía realizada"

* performedDateTime 0..1 MS
* performedDateTime ^short = "Fecha y hora en que se realizó la cirugía. El formato corresponde a año, mes, día y hora (hh:mm) YYYY-MM-DDTHH:MMZ"

* performer 1..1 MS
* performer ^short = "Primer cirujano a cargo de la cirugía"
  * actor 1..1 MS
  * actor only Reference(PractitionerRoleLE)

* category 1..1 MS
* category ^short = "Tipo de cirugía realizada"
* category from VSTipoCirugiaPropuesta

* outcome 0..1 MS
* outcome ^short = "Condición de salud del paciente después de la cirugía"
* outcome from VSCondicionSalidaCirugia

* statusReason 0..1 MS
* statusReason ^short = "Motivo por el cual la cirugía no fue realizada"
* statusReason from VSMotivoSuspencionCirugia

* subject 1..1 MS
* subject ^short = "Referencia al paciente que fue intervenido quirúrgicamente"
* subject only Reference(PatientLE)
