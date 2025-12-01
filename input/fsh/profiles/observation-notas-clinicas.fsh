Profile: ObservationNotasClinicasLE
Parent: CoreObservacionCL
Id: ObservationNotasClinicasLE
Title: "Observation Notas Clinicas LE"
Description: "Observation Notas Clinicas LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* status 1..1 MS
* status ^short = "Estado de la observación, en este caso #registered"
* status = #registered

* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * system ^short =  "Sistema terminológico, url/uri/uuid"
    * system = "http://snomed.info/sct"
    * code 1..1 MS
    * code = #371524004
    * display 0..1 MS
  * text 0..1 MS
  * text ^short = "Notas Clinicas"
* code ^short = "Notas Clinicas"
* code from TipoDeObservacion (extensible)

* subject 1..1 MS
* subject only Reference(PatientLE)

* encounter 1..1 MS
* encounter ^short = "Encuentro en el cual se genera la nota clínica"
* encounter only Reference(EncounterAtenderLE)

* effectiveDateTime 0..1 MS
* effectiveDateTime ^short = "Tiempo o momento en que se realizó la observación"

* performer 0..1 MS
* performer ^short = "Profesional que realiza la observación"
* performer only Reference(PractitionerProfesionalLE)

* value[x] 1..1 MS
* value[x] only string
* valueString ^short = "Anotaciones del profesional de la salud"