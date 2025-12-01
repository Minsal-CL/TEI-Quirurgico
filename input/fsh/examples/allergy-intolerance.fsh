Instance: Ej1AllergyIntolerance
InstanceOf: AllergyIntoleranceIniciarLE
Usage: #example
Title: "Ejemplo de Alergia"
Description: "Registro de alergia a la amoxicilina"

* id = "8f627a17-27f4-4519-9ff7-4f1da6f0eef2"

* clinicalStatus = $allergy-clinical#active

* verificationStatus = $allergy-verification#confirmed

* patient = Reference(Ej1Patient)

* code
  * coding
    * system = $snomed
    * code = #372687004
  * text = "Alergia a la amoxicilina"