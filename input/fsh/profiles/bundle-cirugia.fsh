Profile: BundleCirugiaLE
Parent: Bundle
Id: BundleCirugiaLE
Title: "Bundle Cirugía LE"
Description: "Recurso Bundle Cirugía LE que se utiliza para representar la entrevista prequirúrgica."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains Cirugia 1..1
  and Profesional 1..1
  and RolProfesional 1..1

* entry[Cirugia] ^short = "Entrada en el Bundle: contiene la cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ProcedureCirugiaLE
  * resource ^short = "Cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Procedure"

* entry[Profesional] ^short = "Entrada en el Bundle: contiene el profesional de la salud que realiza la cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional de la salud que realiza la cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

* entry[RolProfesional] ^short = "Entrada en el Bundle: contiene el rol del profesional de la salud en la cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Rol del profesional de la salud que realiza la cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"