Profile: MedicationStatementLE
Parent: MedicationStatement
Id: MedicationStatementLE
Title: "MedicationStatement LE"
Description: "Recurso utilizado para representar la información de medicamentos que el paciente está consumiendo."

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* context 1..1 MS
* context ^short = "Encuentro en el cual se registra la administración del medicamento"
* context only Reference(EncounterAtenderLE)

* status 1..1 MS
* status ^short = "Estado de la administración del medicamento"
* status = #active

* medication[x] 1..1 MS
* medication[x] ^short = "Medicamento administrado"

* subject 1..1 MS
* subject ^short = "Paciente al cual se le administra el medicamento"
* subject only Reference(PatientLE)

