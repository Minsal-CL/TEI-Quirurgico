Profile: EncounterEntrevistaLE
Parent: EncounterCL
Id: EncounterEntrevistaLE
Title: "Encounter Entrevista LE"
Description: "Encounter Entrevista LE recurso que se utiliza para representar el encuentro que se realiza para la entrevista pre-quirúrgica con el paciente."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* extension contains EnCondicionCirugia named EnCondicionCirugia 0..1
* extension[EnCondicionCirugia] ^short = "Registra la decisión pre quirúrgica si el paciente se encuentra en condición para cirugía"

* extension contains ExtensionResultadoEvaluacionPreQx named ExtensionResultadoEvaluacionPreQx 0..1
* extension[ExtensionResultadoEvaluacionPreQx] ^short = "Resultado de la evaluación pre quirúrgica"

// Obligatorios por estandar
* status MS
* status ^short = "Estado actual del encuentro"
* status = #finished

* class from VSModalidadAtencionCodigo
* class ^short = "Modalidad de Atención"

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor de registro"
* identifier ^short = "Id del registro de atención o encuentro del sistema clínico de origen"

* subject 1..1 MS
* subject ^short = "Referencia al paciente que fue atendido en APS"
* subject only Reference(PatientLE)

* period 1..1 MS
  * start 1..1 MS
  * start ^short = "Fecha comienzo del encuentro entrevista"
  * end 0..1 MS
  * end ^short = "Fecha de término del encuentro entrevista"
* period ^short = "Fechas de comienzo y término del encuentro entrevista. El formato queda consignado como YYYY-MM-DDTHH:MMZ"

* basedOn 1..1 MS
* basedOn ^short = "Referencia a la solicitud de cirugía que originó el encuentro"
* basedOn only Reference(ServiceRequestCirugiaLE)

* appointment 0..1 MS
* appointment ^short = "Referencia a la cita que originó el encuentro"
* appointment only Reference(AppointmentAgendarLE)

* participant.individual only Reference(PractitionerRoleLE)
