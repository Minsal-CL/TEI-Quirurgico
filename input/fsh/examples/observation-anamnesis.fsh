Instance: EjObservationAnamnesis
InstanceOf: ObservationAnamnesisLE
Usage: #example
Title: "Observation Anamnesis"
Description: "Ejemplo de Observation Anamnesis"
* id = "6f81d435-c6ca-4a73-9a59-2d89bc9b7e71"

* status = #registered

* code = $snomed#84100007
* code.text = "Anamnesis"

* subject = Reference(Ej1Patient)

* encounter = Reference(EjEncounterAtender)

* effectiveDateTime = "2024-11-30T10:00:00-04:00"

* valueString = "El paciente refiere dolor abdominal intermitente localizado en la región central, con sensación de protrusión, especialmente evidente durante esfuerzos físicos. No se observan náuseas, vómitos ni fiebre. Antecedentes de obesidad (IMC 31), apendicectomía hace 5 años y estreñimiento recurrente tratado con laxantes."

* performer = Reference(EjMedicoCirujanoGastroenterologo)