Extension:   ExtensionMotivoCierreSolicitudCirugia
Id:          ExtensionMotivoCierreSolicitudCirugia
Title:       "Motivo Cierre Solicitud Cirugía"
Description: "Extensión utilizada para la representación de los datos del motivo por el cual se cierra la solicitud de cirugía."
Context: ServiceRequest

* value[x] only CodeableConcept
* value[x] ^short = "Motivo Cierre Solicitud Cirugía"
* url 1..1 MS
* valueCodeableConcept from VSMotivoCierreSolicitudCirugia
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 0..1 MS