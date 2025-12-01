Profile: ServiceRequestCirugiaLE
Parent: ServiceRequest
Id: ServiceRequestCirugiaLE
Title: "ServiceRequest Cirugía LE"
Description: "ServiceRequest Cirugia LE recurso utilizado para la representación de los datos de la solicitud de cirugía."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* extension contains ExtensionMotivoCierreSolicitudCirugia named MotivoCierreSolicitudCirugia 0..1 MS
* extension[MotivoCierreSolicitudCirugia] ^short = "Motivo por el cual se cierra la solicitud de cirugía"

* extension contains ExtensionTipoPriorizacion named TipoPriorizacion 0..1 MS
* extension[TipoPriorizacion] ^short = "Tipo de priorización de la solicitud de cirugía."

* extension contains ExtensionStringFundamentoPriorizacion named FundamentoPriorizacion 0..1 MS
* extension[FundamentoPriorizacion] ^short = "Razones del porque se prioriza esta solicitud de cirugía."

* extension contains RequirioComite named RequirioComite 0..1 MS
* extension[RequirioComite] ^short = "Indica si la solicitud de cirugía requirió comité"

* identifier MS
  * value MS
  * value ^short = "Identificador de la Solicitud de Cirugía"
* identifier ^short = "Identificador de la Solicitud de Cirugía, se asigna desde origen"

// OBLIGATORIOS POR ESTANDAR
* status MS
* status ^short = "Estado de la solicitud de cirugía."
* status ^definition = "Al crear la solicitud de cirugía, el estado es active, al pasar satisfactoriamente por pre quirúrgico, el estado no cambia. Si en pre quirúrgico se detecta que se requiere una nueva evaluación, el estado cambia a on-hold. Si se cancela la cirugía, el estado cambia a revoked. Si se realiza la cirugía, el estado cambia a completed."

* intent MS
* intent ^short = "Tipo de solicitud" 
* intent = #order

* subject 1..1  MS
* subject ^short = "Paciente a quien se le hace la orden de Cirugía"
* subject only Reference(PatientLE) 

* authoredOn 1..1 MS
* authoredOn ^short = "Fecha en que se solicita la cirugía. El formato corresponde a año, mes, día y hora (hh:mm) YYYY-MM-DDTHH:MMZ"

* reasonReference 1..1 MS
* reasonReference ^short = "Motivo por el cual se solicita la cirugía"
* reasonReference only Reference(ConditionDiagnosticoLE)

* priority 1..1 MS
* priority ^short = "Prioridad recomendada solicitud de cirugía de origen: routine=normal | urgent=urgente"

* category 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
* category ^short = "Tipo de cirugía propuesta"
* category from VSTipoCirugiaPropuesta


* code 1..1 MS
  * coding 1..2 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
* code ^short = "Correspondencia al código de la cirugía propuesta"
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)

* orderDetail 0..* MS
* orderDetail ^short = "Códigos FONASA asociados a la intervencion/es a realizar"

* subject only Reference(PatientLE)

* encounter only Reference(EncounterAtenderLE)
* encounter ^short = "Referencia al encuentro de Atención en el cual se solicita la cirugía" 
* requester 0..1 MS
* requester ^short = "Rol del médico que solicita la cirugía"
* requester only Reference(PractitionerRoleLE)

* performer 0..1 MS
* performer ^short = "Profesional de la salud que realiza el cierre de la solicitud de cirugía"
* performer only Reference(PractitionerRoleLE)

* supportingInfo 0..* MS 
* supportingInfo ^short = "Información clínica adicional"
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice creado para almacenar referencias"
* supportingInfo contains TipoAlergia 0..* MS 
   and SolicitudExamen 0..* MS
   and ResultadoExamen 0..* MS
   and MedicamentosConsumidos 0..* MS
   and EnfermedadCronica 0..* MS


* supportingInfo[TipoAlergia] only Reference(AllergyIntoleranceIniciarLE)
* supportingInfo[TipoAlergia] ^short = "Referencia  a los tipos de alergia"
* supportingInfo[SolicitudExamen] only Reference(ServiceRequestExamenLE)
* supportingInfo[SolicitudExamen] ^short = "Referencia a las solicitudes de examenes"
* supportingInfo[ResultadoExamen] only Reference(ObservationResultadoExamen)
* supportingInfo[ResultadoExamen] ^short = "Referencia al los resultados de examenes"
* supportingInfo[MedicamentosConsumidos] only Reference(MedicationStatementLE)
* supportingInfo[MedicamentosConsumidos] ^short = "Referencia a los medicamentos consumidos por el paciente"
* supportingInfo[EnfermedadCronica] only Reference(ConditionDiagnosticoLE)
* supportingInfo[EnfermedadCronica] ^short = "Referencia a las enfermedades crónicas del paciente"