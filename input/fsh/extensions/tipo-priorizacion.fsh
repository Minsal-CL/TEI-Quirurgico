Extension: ExtensionTipoPriorizacion
Id: ExtensionTipoPriorizacion
Title: "Extension Tipo Priorización"
Description: "Extensión para representar el tipo de priorización de la solicitud de cirugía."
Context: ServiceRequest
* value[x] only CodeableConcept
* value[x] ^short = "Tipo de priorización de la solicitud de cirugía."
* url 1..1 MS
* valueCodeableConcept from VSTipoPriorizacion
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 0..1 MS