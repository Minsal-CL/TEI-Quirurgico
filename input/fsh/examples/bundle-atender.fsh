Instance: EjBundleAtender
InstanceOf: BundleAtenderLE
Usage: #example
Title: "Bundle Atender LE"
Description: "Ejemplo de Bundle Atender LE"

* type = #transaction

* entry[EncuentroAtender]
  * fullUrl = "urn:uuid:50e8af13-6d21-4d92-966d-e7c83cc89fbc"
  * resource = EjEncounterAtenderBundle
  * request
    * method = #POST
    * url = "Encounter"

* entry[Establecimiento]
  * fullUrl = "urn:uuid:5491b8d5-e06c-4f89-beb7-75a1989cdc81"
  * resource = EjOrganizacionEstablecimiento
  * request
    * method = #POST
    * url = "Organization"
    * ifNoneExist = "identifier=http://deis.minsal.cl/establecimientos|114105"

* entry[Profesional]
  * fullUrl = "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
  * resource = EjMedicoCirujanoGastroenterologo
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=http://www.registrocivil.cl|33333333-3"

* entry[RolProfesional]
  * fullUrl = "urn:uuid:96f2b566-b17b-4e4e-ada0-3986748990ee"
  * resource = EjPractitionerRoleIndicador
    * practitioner.reference = "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
    * organization.reference = "urn:uuid:5491b8d5-e06c-4f89-beb7-75a1989cdc81"
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "practitioner.identifier=http://www.registrocivil.cl|33333333-3&role=https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE|iniciador"

* entry[Paciente]
  * fullUrl = "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3"
  * resource = Ej1Patient
  * request
    * method = #POST
    * url = "Patient"
    * ifNoneExist = "identifier=4444444-4"

* entry[Condicion]
  * fullUrl = "urn:uuid:b97a87f6-060d-48de-9e4d-db93518fd278"
  * resource = EjConditionDiagnostico
    * subject.reference = "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3"
    * encounter.reference = "urn:uuid:50e8af13-6d21-4d92-966d-e7c83cc89fbc"
  * request
    * method = #POST
    * url = "Condition"

* entry[SolicitudCirugia]
  * fullUrl = "urn:uuid:38a17703-0731-4c3f-88fd-1202dc99d7ce"
  * resource = EjServiceRequestCirugia
    * subject.reference = "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3"
    * reasonReference.reference = "urn:uuid:b97a87f6-060d-48de-9e4d-db93518fd278"
    * encounter.reference = "urn:uuid:50e8af13-6d21-4d92-966d-e7c83cc89fbc"
    * requester.reference = "urn:uuid:96f2b566-b17b-4e4e-ada0-3986748990ee"
  * request
    * method = #POST
    * url = "ServiceRequest"


Instance: EjEncounterAtenderBundle
InstanceOf: EncounterAtenderLE
Usage: #inline
Title: "Encounter Atender LE"
Description: "Ejemlo de Encounter Atender LE"
* id = "50e8af13-6d21-4d92-966d-e7c83cc89fbc"

* status = #finished

* class = CSModalidadAtencionCodigo#1 "Presencial"

* identifier.value = "ENC-20241130-001"

* diagnosis[0].condition.reference = "urn:uuid:b97a87f6-060d-48de-9e4d-db93518fd278"

* subject.reference = "urn:uuid:22e862c5-6d96-44ec-869c-dba001058cb3"

* period.start = "2024-11-30T10:00:00-04:00"

* type = CSTipoConsulta#1 "Nueva"

* basedOn.identifier.value = "SR-20241115-086"

* participant.individual.reference = "urn:uuid:96f2b566-b17b-4e4e-ada0-3986748990ee"

