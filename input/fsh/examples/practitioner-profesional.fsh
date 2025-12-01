Instance: EjMedicoCirujanoGastroenterologo
InstanceOf: PractitionerProfesionalLE
Usage: #example
Title: "Médico Cirujano Gastroenterólogo"
Description: "Ejemplo de un profesional médico cirujano con especialidad en gastroenterología adulto"
* id = "fbb0e12c-95ec-43f7-bff1-73009b307cb5"
* identifier[run]
  * use = #official
  * type = $CS-TipoIdentificador#01
  * value = "33333333-3"
  * system = "http://www.registrocivil.cl"

* name
  * use = #official
  * family = "Fernandez"
    * extension[segundoApellido].valueString = "Alvarez"
  * given[+] = "Maria"

* qualification[TituloProfesional]
  * code = CSTituloProfesional#1 "MÉDICO CIRUJANO"
  * code.text = "Médico Cirujano"
  * identifier.value = "cert"
  * extension[Mencion].valueString = "Cirugía Digestiva"


* qualification[EspecialidadMedica]
  * code = CSEspecialidadMed#18 "GASTROENTEROLOGÍA ADULTO"
  * code.text = "Gastroenterología Adulto"
  * identifier.value = "esp"

* birthDate = "1995-09-12"


Instance: EjEnfermera
InstanceOf: PractitionerProfesionalLE
Usage: #example
Title: "Enfermera"
Description: "Ejemplo de un profesional de enfermería"
* id = "2d5d9db4-6ade-43c9-b4f5-cc68b9c7f210"

* identifier[run]
  * use = #official
  * type = $CS-TipoIdentificador#01
  * value = "55555555-5"
  * system = "http://www.registrocivil.cl"

* name
  * use = #official
  * family = "Hernandez"
    * extension[segundoApellido].valueString = "Navarro"
  * given[+] = "Paula"

* qualification[TituloProfesional]
  * code = CSTituloProfesional#3  "ENFERMERAS(OS)"
  * code.text = "Enfermera"
  * identifier.value = "cert"

* birthDate = "1990-05-15"