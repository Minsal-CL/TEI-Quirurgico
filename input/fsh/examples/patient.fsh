Instance: Ej1Patient
InstanceOf: PatientLE
Usage: #example
Title: "Ejemplo de Paciente"
Description: "Ejemplo de Paciente para lista de espera quirúrgica"

* id = "22e862c5-6d96-44ec-869c-dba001058cb3"

* extension[PaisOrigen].valueCodeableConcept = $CS-CodPais-CoreCL#152 "Chile"
* extension[Religion].valueCodeableConcept = CSReligion#1 "Católica"
* extension[PueblosOriginariosPerteneciente].valueBoolean = true
* extension[PueblosAfrodescendiente].valueBoolean = false
* extension[PueblosOriginarios].valueCodeableConcept = PueblosOriginariosCS#01 "Mapuche"
* extension[nacionalidad].valueCodeableConcept = $CS-CodPais-CoreCL#152 "Chile"
* extension[IdentidadDeGenero].valueCodeableConcept = $CS-IdentidadGenero#1 "Masculino"

* identifier[+]
  * type = $CS-TipoIdentificador#01 "RUN"
  * type.extension[paisEmisionDocumento].valueCodeableConcept = $CS-CodPais-CoreCL#152 "Chile"
  * value = "4444444-4"

* gender = #male

* name[NombreOficial]
  * use = #official
  * family = "Pérez"
    * extension[segundoApellido].valueString = "Olivares"
  * given[+] = "Juan"

* birthDate = "1980-01-01"

* telecom[+]
  * system = #phone
  * value = "987654321"

* deceasedBoolean = false