Instance: EjBundleEntrevista
InstanceOf: BundleEntrevistaLE
Usage: #example
Title: "Bundle Entrevista LE"
Description: "Ejemplo de Bundle Entrevista LE"

* type = #transaction

* entry[EncuentroEntrevista]
  * fullUrl = "urn:uuid:6c7dae68-552d-44cb-b414-e5024ae8e0a0"
  * resource = EjEncounterEntrevistaBundle
  * request
    * method = #POST
    * url = "Encounter"

* entry[Profesional]
  * fullUrl = "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  * resource = EjEnfermera
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=http://www.registrocivil.cl|55555555-5"

* entry[RolProfesional]
  * fullUrl = "urn:uuid:0e5c9353-5f8e-4801-b7fc-59395f14344c"
  * resource = EjPractitionerRoleEntrevistador
    * practitioner.reference = "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "practitioner.identifier=http://www.registrocivil.cl|55555555-5&role=https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE|entrevistador"

* entry[SolicitudCirugia]
  * fullUrl = "urn:uuid:38a17703-0731-4c3f-88fd-1202dc99d7ce"
  * resource = EjServiceRequestCirugia
    * status = #active
  * request
    * method = #PUT
    * url = "ServiceRequest?identifier=CIR-2024-0001"


Instance: EjEncounterEntrevistaBundle
InstanceOf: EncounterEntrevistaLE
Usage: #inline
Title: "Encounter Entrevista LE"
Description: "Ejemplo de Encounter Entrevista LE"
* id = "6c7dae68-552d-44cb-b414-e5024ae8e0a0"

* extension[EnCondicionCirugia].valueBoolean = true

* extension[ExtensionResultadoEvaluacionPreQx].valueCodeableConcept = CSResultadoEvaluacionPreQuirurgica#1 "El Paciente requiere intervención quirúrgica."

* status = #finished

* class = CSModalidadAtencionCodigo#1 "Presencial"

* identifier.value = "1234567890"

* subject = Reference(Ej1Patient)

* period.start = "2024-12-02T10:00:00-04:00"

* appointment = Reference(EjAgendaEntrevistaPreQuirurgica)

* participant.individual.reference = "urn:uuid:0e5c9353-5f8e-4801-b7fc-59395f14344c"

* basedOn = Reference(EjServiceRequestCirugia)