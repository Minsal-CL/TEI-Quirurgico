Instance: EjBundleCierre
InstanceOf: BundleCierreLE
Usage: #example
Title: "Bundle Cierre LE"
Description: "Ejemplo de Bundle Cierre LE"

* type = #transaction

* entry[SolicitudCirugia]
  * fullUrl = "urn:uuid:38a17703-0731-4c3f-88fd-1202dc99d7ce"
  * resource = EjServiceRequestCirugiaBundle
  * request
    * method = #PUT
    * url = "ServiceRequest?identifier=CIR-2024-0001"

* entry[Profesional]
  * fullUrl = "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  * resource = EjEnfermera
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=http://www.registrocivil.cl|55555555-5"

* entry[RolProfesional]
  * fullUrl = "urn:uuid:5a4ca080-8d59-4409-92f3-e6fc1eb855d6"
  * resource = EjPractitionerRoleTerminador
    * practitioner.reference = "urn:uuid:2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "practitioner.identifier=http://www.registrocivil.cl|33333333-3&role=https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE|terminador"





Instance: EjServiceRequestCirugiaBundle
InstanceOf: ServiceRequestCirugiaLE
Usage: #inline
Title: "ServiceRequest Cirugía LE"
Description: "Ejemplo de ServiceRequest Cirugía LE"
* id = "38a17703-0731-4c3f-88fd-1202dc99d7ce"

* extension[MotivoCierreSolicitudCirugia].valueCodeableConcept = CSMotivoCierreSolicitudCirugia#3 "Corresponde a la realización del examen procedimiento ejecutado (2)"
* extension[FundamentoPriorizacion].valueString = "Paciente con dolor abdominal crónico"
* extension[RequirioComite].valueBoolean = false
* extension[TipoPriorizacion].valueCodeableConcept = CSTipoPriorizacion#5 "Usuarios con dos o más años en LE"

* identifier.value = "CIR-2024-0001"

* status = #completed

* intent = #order

* subject = Reference(Ej1Patient)

* authoredOn = "2024-12-02T10:00:00-04:00"

* reasonReference = Reference(EjConditionDiagnostico)

* priority = #routine

* category = CSTipoCirugiaPropuesta#1 "Cirugía Mayor Electiva"

* code = $snomed#39607008

* encounter = Reference(EjEncounterAtender)

* requester = Reference(EjPractitionerRoleIndicador)

* performer.reference = "urn:uuid:5a4ca080-8d59-4409-92f3-e6fc1eb855d6"

