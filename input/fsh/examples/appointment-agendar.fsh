Instance: EjAgendaEntrevistaPreQuirurgica
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Agendamiento entrevista pre quirúrgica"
Description: "Ejemplo de agendamiento de entrevista pre quirúrgica"

* id = "76adaeb4-4885-4aa6-96c1-13b9df9a61d7"

* extension[ExtensionMediodeContacto].valueCodeableConcept = CSMediodeContacto#3 "Llamada"
* extension[ExtensionContactadoLE]
  * extension[Contactado].valueBoolean = true

* status = #booked

* created = "2024-10-25T14:00:00-04:00"

* start = "2024-10-27T10:00:00-04:00"

* end = "2024-10-27T10:30:00-04:00"

* identifier.value = "CITA-20241027-001"

* serviceType = CSTipoServicioAgendamiento#1 "Entrevista Pre Quirúrgica"

* participant[patientLE]
  * actor = Reference(Ej1Patient)
    * type = #Patient
  * status = #accepted
  

* participant[practitionerRoleLE]
  * actor = Reference(EjPractitionerRoleEntrevistador)
    * type = #PractitionerRole
  * status = #accepted

* basedOn = Reference(EjServiceRequestCirugia)



Instance: EjAgendaCirugia
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Agendamiento cirugía"
Description: "Ejemplo de agendamiento de cirugía"

* id = "0708a908-fc3a-48ea-90e7-b5cd0e516e30"

* extension[ExtensionMediodeContacto].valueCodeableConcept = CSMediodeContacto#3 "Llamada"
* extension[ExtensionContactadoLE]
  * extension[Contactado].valueBoolean = true

* status = #booked

* created = "2024-10-27T14:00:00-04:00"

* start = "2024-11-12T10:00:00-04:00"

* end = "2024-11-12T11:00:00-04:00"

* identifier.value = "CITA-20241130-001"

* serviceType = CSTipoServicioAgendamiento#2 "Agendamiento de quirófano"

* appointmentType = CSTipoAgendamiento#1 "Electivo Normal"

* participant[patientLE]
  * actor = Reference(Ej1Patient)
    * type = #Patient
  * status = #accepted
  

* participant[practitionerRoleLE]
  * actor = Reference(EjPractitionerRoleAtendedor)
    * type = #PractitionerRole
  * status = #accepted

* basedOn = Reference(EjServiceRequestCirugia)