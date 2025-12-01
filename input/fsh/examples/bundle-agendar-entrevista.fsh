Instance: EjBundleAgendarEntrevista
InstanceOf: BundleAgendarEntrevistaLE
Usage: #example
Title: "Bundle Agendar Entrevista LE"
Description: "Ejemplo de Bundle Agendar Entrevista LE"

* type = #transaction

* entry[Agendamiento]
  * fullUrl = "urn:uuid:76adaeb4-4885-4aa6-96c1-13b9df9a61d7"
  * resource = EjAgendaEntrevistaPreQuirurgicaBundle
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
  * fullUrl = "urn:uuid:2b238804-f4bd-4005-82d2-9777aa09bea8"
  * resource = EjPractitionerRoleAgendador
    * practitioner.reference = "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "practitioner.identifier=http://www.registrocivil.cl|55555555-5&role=https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE|agendador"


Instance: EjAgendaEntrevistaPreQuirurgicaBundle
InstanceOf: AppointmentAgendarLE
Usage: #inline
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
  * actor.type = #Patient
  * status = #accepted
  

* participant[practitionerRoleLE]
  * actor.reference = "urn:uuid:2b238804-f4bd-4005-82d2-9777aa09bea8"
  * actor.type = #PractitionerRole
  * status = #accepted

* basedOn = Reference(EjServiceRequestCirugia)