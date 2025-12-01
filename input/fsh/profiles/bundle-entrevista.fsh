Profile: BundleEntrevistaLE
Parent: Bundle
Id: BundleEntrevistaLE
Title: "Bundle Entrevista LE"
Description: "Recurso Bundle Entrevista LE que se utiliza para representar la entrevista prequirúrgica."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains EncuentroEntrevista 1..1
  and Profesional 1..1
  and RolProfesional 1..1
  and SolicitudCirugia 1..1

* entry[EncuentroEntrevista] ^short = "Entrada en el Bundle: contiene el encuentro médico del paciente con el especialista quirúrgico."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only EncounterEntrevistaLE
  * resource ^short = "Encuentro médico del paciente con el especialista quirúrgico."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Encounter"

* entry[Profesional] ^short = "Entrada en el Bundle: contiene el profesional de la salud que realiza la entrevista."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional de la salud que realiza la entrevista."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

* entry[RolProfesional] ^short = "Entrada en el Bundle: contiene el rol del profesional de la salud en la entrevista."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Rol del profesional de la salud que realiza la entrevista."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

* entry[SolicitudCirugia] ^short = "Entrada en el Bundle: contiene la solicitud de cirugía que originó la entrevista."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestCirugiaLE
  * resource ^short = "Solicitud de cirugía que originó la entrevista actualizada."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #PUT
    * url 1..1 MS
    * url ^short = "Uri de identificación del recurso a actualizar"