Instance: EjObservationResultadoExamen
InstanceOf: ObservationResultadoExamen
Usage: #example
Title: "Observation Resultado Examen"
Description: "Ejemplo de un resultado de examen anterior como antecedente"
* id = "de52c7f4-7022-4aab-9e7e-968fc792a9a4"

* status = #registered

* category = $CS-observation-category#laboratory

* code = $loinc#2345-7
* code.text = "Examen de glucosa en sangre"

* subject = Reference(Ej1Patient)

* encounter = Reference(EjEncounterAtender)

* effectiveDateTime = "2024-11-30T10:00:00-04:00"

* performer = Reference(EjMedicoCirujanoGastroenterologo)

* valueQuantity
  * value = 120
  * unit = "mg/dL"
  * system = "http://unitsofmeasure.org"
  * code = #mg/dL