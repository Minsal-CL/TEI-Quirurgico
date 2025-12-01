Profile: EncounterAtenderLE
Parent: EncounterCL
Id: EncounterAtenderLE
Title: "Encounter Atender LE"
Description: "Encounter Atender LE recurso que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

// Obligatorios por estandar
* status MS
* status ^short = "Estado actual del encuentro"
* status = #finished

* class from VSModalidadAtencionCodigo
* class ^short = "Modalidad de Atención"
* class = CSModalidadAtencionCodigo#1 "Presencial"

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor de registro"
* identifier ^short = "Id del registro de atención o encuentro del sistema clínico de origen"

* diagnosis 1..* MS
* diagnosis ^short = "Lista de diagnósticos relevantes a este encuentro médico"
* diagnosis.condition 1..1 MS
* diagnosis.condition ^short = "Referencia al diagnóstico, relevante para este encuentro médico"
* diagnosis.condition only Reference(ConditionDiagnosticoLE)

* subject 1..1 MS
* subject ^short = "Referencia al paciente que fue atendido en APS"
* subject only Reference(PatientLE)

* period 1..1 MS
  * start 1..1 MS
  * start ^short = "Fecha Comienzo del encuentro atención de especialidad"
  * end 0..1 MS
  * end ^short = "Fecha de término del encuentro atención de especialidad"
* period ^short = "Fechas de comienzo y término del encuentro atención de especialidad. El formato queda consignado como YYYY-MM-DDTHH:MMZ"

* type from VSTipoConsulta
* type ^short = "Tipo de consulta"
* type 0..1 MS

* basedOn 0..1 MS
* basedOn ^short = "Referencia a ServiceRequest que originó la atención"
* basedOn only Reference(ServiceRequest)

* participant.individual only Reference(PractitionerRoleLE)
