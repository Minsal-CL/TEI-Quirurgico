ValueSet: VSIdentificadorPrestador
Id: VSIdentificadorPrestador
Title: "IdentificadorPrestador"
Description: "IdentificadorPrestador"
* ^experimental = false
* ^version = "0.1"
* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSTipoIdentificador where concept is-a #01 "Rol Único Nacional o RUN"
* include codes from system CSTipoIdentificador where concept is-a #13 "Registro Nacional de Prestadores Individuales"