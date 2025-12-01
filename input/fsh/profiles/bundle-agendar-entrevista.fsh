Profile: BundleAgendarEntrevistaLE
Parent: Bundle
Id: BundleAgendarEntrevistaLE
Title: "Bundle Agendar Entrevista LE"
Description: "Recurso Bundle Agendar Entrevista LE que se utiliza para representar el agendamiento de la entrevista prequirúrgica."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains Agendamiento 1..1
  and Profesional 1..1
  and RolProfesional 1..1

* entry[Agendamiento] ^short = "Entrada en el Bundle: contiene el agendamiento de la entrevista prequirúrgica."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only AppointmentAgendarLE
  * resource ^short = "Agendamiento de la entrevista prequirúrgica."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Appointment"

* entry[Profesional] ^short = "Entrada en el Bundle: contiene el profesional de la salud que realiza el encuentro médico."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional de la salud que realiza el encuentro médico."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

* entry[RolProfesional] ^short = "Entrada en el Bundle: contiene el rol del profesional de la salud en el encuentro médico."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Rol del profesional de la salud en el encuentro médico."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"
