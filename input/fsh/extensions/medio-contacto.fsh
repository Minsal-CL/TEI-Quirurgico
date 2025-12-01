Extension:   ExtensionMediodeContacto
Id:          ExtensionMediodeContacto
Title:       "Medio de Contacto"
Description: "Medio de Contacto"
Context: Appointment

* value[x] only CodeableConcept
* value[x] ^short = "MediodeContacto"
* url 1..1 MS
* valueCodeableConcept from VSMediodeContacto
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  
  * system 0..1 MS
  * display 0..1 MS