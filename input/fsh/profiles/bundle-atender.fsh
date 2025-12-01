Profile: BundleAtenderLE
Parent: Bundle
Id: BundleAtenderLE
Title: "Bundle Atender LE"
Description: "Recurso Bundle Atender LE que se utiliza para representar el encuentro médico del paciente con el especialista quirúrgico."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains EncuentroAtender 1..1
  and Establecimiento 1..1
  and Profesional 1..1
  and RolProfesional 1..1
  and Paciente 1..1
  and Condicion 1..*
  and SolicitudCirugia 0..1
  and ResultadoExamen 0..*
  and SolicitudExamen 0..* 
  and Alergia 0..*
  and Medicamento 0..*
  and NotasClinicas 0..*

* entry[EncuentroAtender] ^short = "Entrada en el Bundle: contiene el encuentro médico del paciente con el especialista quirúrgico."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only EncounterAtenderLE
  * resource ^short = "Encuentro médico del paciente con el especialista quirúrgico."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Encounter"

* entry[Establecimiento] ^short = "Entrada en el Bundle: contiene el establecimiento de salud donde se realiza el encuentro médico."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only OrganizationLE
  * resource ^short = "Establecimiento de salud donde se realiza el encuentro médico."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Organization"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

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

* entry[Paciente] ^short = "Entrada en el Bundle: contiene el paciente que participa en el encuentro médico."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PatientLE
  * resource ^short = "Paciente que participa en el encuentro médico."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Patient"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar que no exista un recurso con el mismo identificador"

* entry[Condicion] ^short = "Entrada en el Bundle: contiene las condiciones de salud del paciente."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ConditionDiagnosticoLE
  * resource ^short = "Condiciones de salud del paciente."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Condition"

* entry[SolicitudCirugia] ^short = "Entrada en el Bundle: contiene la solicitud de cirugía."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestCirugiaLE
  * resource ^short = "Solicitud de cirugía."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "ServiceRequest"

* entry[ResultadoExamen] ^short = "Entrada en el Bundle: contiene los resultados de exámenes."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationResultadoExamen
  * resource ^short = "Resultados de exámenes."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Observation"

* entry[SolicitudExamen] ^short = "Entrada en el Bundle: contiene las solicitudes de exámenes."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestExamenLE
  * resource ^short = "Solicitudes de exámenes."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "ServiceRequest"

* entry[Alergia] ^short = "Entrada en el Bundle: contiene las alergias del paciente."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only AllergyIntoleranceIniciarLE
  * resource ^short = "Alergias del paciente."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "AllergyIntolerance"

* entry[Medicamento] ^short = "Entrada en el Bundle: contiene los medicamentos del paciente."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only MedicationStatementLE
  * resource ^short = "Medicamentos del paciente."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "MedicationStatement"

* entry[NotasClinicas] ^short = "Entrada en el Bundle: contiene las notas clínicas del paciente."
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationNotasClinicasLE
  * resource ^short = "Notas clínicas del paciente."
  * request 1..1 MS
  * request ^short = "Petición de creación del recurso"
    * method = #POST
    * url = "Observation"