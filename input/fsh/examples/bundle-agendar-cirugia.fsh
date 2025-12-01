Instance: EjBundleAgendarCirugia
InstanceOf: BundleAgendarCirugiaLE
Usage: #example
Title: "Bundle Agendar Cirugía LE"
Description: "Ejemplo de Bundle Agendar Cirugía LE que se utiliza para representar el agendamiento de la cirugía."

* type = #transaction

* entry[Agendamiento]
  * fullUrl = "urn:uuid:0708a908-fc3a-48ea-90e7-b5cd0e516e30"
  * resource = EjAgendaCirugiaBundle
  * request
    * method = #POST
    * url = "Appointment"

* entry[Profesional]
  * fullUrl = "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  * resource = EjEnfermera
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=http://www.registrocivil.cl|55555555-5"

* entry[RolProfesional]
  * fullUrl = "urn:uuid:ec19af63-cab4-46b5-a5d7-8df62f596e41"
  * resource = EjPractitionerRolePlanificador
    * practitioner.reference = "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "identifier=http://www.registrocivil.cl|33333333-3&code=http://fhir.minsal.cl/CodeSystem/CSPractitionerTipoRolLE|planificador" 



Instance: EjAgendaCirugiaBundle
InstanceOf: AppointmentAgendarLE
Usage: #inline
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
  * actor.reference = "urn:uuid:ec19af63-cab4-46b5-a5d7-8df62f596e41"
  * actor.type = #PractitionerRole
  * status = #accepted

* basedOn = Reference(EjServiceRequestCirugia)