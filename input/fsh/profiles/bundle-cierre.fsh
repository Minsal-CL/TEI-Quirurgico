Profile: BundleCierreLE
Parent: Bundle
Id: BundleCierreLE
Title: "Bundle Cierre LE"
Description: "Recurso Bundle Cierre LE que se utiliza para representar el cierre de la solicitud de cirugía."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains SolicitudCirugia 1..1
  and Profesional 1..1
  and RolProfesional 1..1

* entry[SolicitudCirugia] ^short = "Entrada en el Bundle: contiene la solicitud de cirugía a cerrar."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestCirugiaLE
  * resource ^short = "Solicitud de cirugía a cerrar."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #PUT
    * url 1..1 MS
    * url ^short = "Uri de identificación del recurso a actualizar"

* entry[Profesional] ^short = "Entrada en el Bundle: contiene el profesional de la salud o administrativo que realiza el cierre de la solicitud de cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE or PractitionerAdministrativoLE
  * resource ^short = "Profesional de la salud que realiza el cierre de la solicitud de cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

* entry[RolProfesional] ^short = "Entrada en el Bundle: contiene el rol del profesional de la salud o administrativo en el cierre de la solicitud de cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Rol del profesional de la salud que realiza el cierre de la solicitud de cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"