Extension: ExtensionResultadoEvaluacionPreQx
Id: ExtensionResultadoEvaluacionPreQx
Title: "Extension Resultado Evaluación Pre-Qx"
Description: "Extensión para representar el resultado de la evaluación pre-quirúrgica."
Context: Encounter
* value[x] only CodeableConcept
* value[x] ^short = "Resultado de la evaluación pre-quirúrgica"
* url 1..1 MS
* valueCodeableConcept from VSResultadoEvaluacionPreQuirurgica
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 0..1 MS