Instance: EjBundleCirugia
InstanceOf: BundleCirugiaLE
Usage: #example
Title: "Bundle Cirugía LE"
Description: "Ejemplo de Bundle Cirugía LE"

* type = #transaction

* entry[Cirugia]
  * fullUrl = "urn:uuid:abfca780-745d-4c35-ae8a-fd0dbc3a9b16"
  * resource = EjCirugiaBundle
  * request
    * method = #POST
    * url = "Procedure"

* entry[Profesional]
  * fullUrl = "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
  * resource = EjMedicoCirujanoGastroenterologo
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=http://www.registrocivil.cl|33333333-3"

* entry[RolProfesional]
  * fullUrl = "urn:uuid:4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa"
  * resource = EjPractitionerRoleAtendedor
    * practitioner.reference = "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "practitioner.identifier=http://www.registrocivil.cl|33333333-3&role=https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSPractitionerTipoRolLE|atendedor"


Instance: EjCirugiaBundle
InstanceOf: ProcedureCirugiaLE
Usage: #inline
Title: "Cirugía Hernia Ventral"
Description: "Ejemplo de una cirugía de hernia ventral"
* id = "abfca780-745d-4c35-ae8a-fd0dbc3a9b16"

* basedOn = Reference(EjServiceRequestCirugia)

* status = #completed

* code = $snomed#39607008
* code.text = "Cirugía de hernia ventral"

* performedDateTime = "2024-12-02T10:00:00-04:00"

* performer.actor.reference = "urn:uuid:4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa"

* category = CSTipoCirugiaPropuesta#1 "Cirugía Mayor Electiva"

* outcome = CSCondicionSalidaCirugia#1 "Vivo"

* subject = Reference(Ej1Patient)