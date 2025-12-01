Instance: EjConditionDiagnostico
InstanceOf: ConditionDiagnosticoLE
Usage: #example
Title: "Ejemplo de Condition Diagnostico LE"
Description: "Ejemplo de un recurso Condition Diagnostico LE"
* id = "b97a87f6-060d-48de-9e4d-db93518fd278"

* subject = Reference(Ej1Patient)

* encounter = Reference(EjEncounterAtender)

* code = $cie10#K43.9
  * text = "Hernia ventral sin obstrucción ni gangrena"

* category = $CS-condition-category#encounter-diagnosis

* clinicalStatus = $CS-condition-clinical#active

* verificationStatus = $CS-condition-ver-status#confirmed