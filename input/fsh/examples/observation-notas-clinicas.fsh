Instance: EjObservationNotasClinicas
InstanceOf: ObservationNotasClinicasLE
Usage: #example
Title: "Observation Notas Clinicas"
Description: "Ejemplo de Observation Notas Clinicas"
* id = "913614cd-2069-49be-a1d8-0bc0cdacd5f2"

* status = #registered

* code = $snomed#371524004
* code.text = "Notas Clinicas"

* subject = Reference(Ej1Patient)

* encounter = Reference(EjEncounterAtender)

* effectiveDateTime = "2024-11-30T10:00:00-04:00"

* valueString = "El paciente presenta dolor abdominal leve en la región epigástrica. Hernia ventral diagnosticada previamente. Se recomienda cirugía electiva con malla. Se descartan signos de obstrucción intestinal."

* performer = Reference(EjMedicoCirujanoGastroenterologo)