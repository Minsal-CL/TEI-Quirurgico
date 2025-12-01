Instance: EjMedicationStatement
InstanceOf: MedicationStatementLE
Usage: #example
Title: "MedicationStatement LE"
Description: "Ejemplo de MedicationStatement LE"
* id = "d853623b-9ad4-4ceb-8d25-09facfa877e3"

* context = Reference(EjEncounterAtender)

* status = #active

* medicationCodeableConcept = $snomed#372687004

* subject = Reference(Ej1Patient)