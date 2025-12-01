Profile: BundleAgendarCirugiaLE
Parent: Bundle
Id: BundleAgendarCirugiaLE
Title: "Bundle Agendar Cirugía LE"
Description: "Recurso Bundle Agendar Cirugía LE que se utiliza para representar el agendamiento de la cirugía."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains Agendamiento 1..1
  and Profesional 1..1
  and RolProfesional 1..1

* entry[Agendamiento] ^short = "Entrada en el Bundle: contiene el agendamiento de la cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only AppointmentAgendarLE
  * resource ^short = "Agendamiento de la cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Appointment"

* entry[Profesional] ^short = "Entrada en el Bundle: contiene el profesional de la salud realiza el agendamiento de cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional de la salud que realiza el agendamiento de cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

* entry[RolProfesional] ^short = "Entrada en el Bundle: contiene el rol del profesional de la salud en el agendamiento de cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Rol del profesional de la salud en el agendamiento de cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"
