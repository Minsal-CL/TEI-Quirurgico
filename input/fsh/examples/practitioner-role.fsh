Instance: EjPractitionerRoleAgendador
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Entrevistador LE"
Description: "Ejemplo de PractitionerRole Entrevistador LE"
* id = "2b238804-f4bd-4005-82d2-9777aa09bea8"

* organization = Reference(EjOrganizacionEstablecimiento)

* practitioner = Reference(EjEnfermera)

* code = CSPractitionerTipoRolLE#agendador

Instance: EjPractitionerRoleEntrevistador
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Entrevistador LE"
Description: "Ejemplo de PractitionerRole Entrevistador LE"
* id = "0e5c9353-5f8e-4801-b7fc-59395f14344c"

* organization = Reference(EjOrganizacionEstablecimiento)

* practitioner = Reference(EjEnfermera)

* code = CSPractitionerTipoRolLE#entrevistador


Instance: EjPractitionerRolePlanificador
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Planificador LE"
Description: "Ejemplo de PractitionerRole Planificador LE"
* id = "ec19af63-cab4-46b5-a5d7-8df62f596e41"

* organization = Reference(EjOrganizacionEstablecimiento)

* practitioner = Reference(EjEnfermera)

* code = CSPractitionerTipoRolLE#planificador


Instance: EjPractitionerRoleIndicador
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Indicador LE"
Description: "Ejemplo de PractitionerRole Indicador LE"
* id = "96f2b566-b17b-4e4e-ada0-3986748990ee"

* organization = Reference(EjOrganizacionEstablecimiento)

* practitioner = Reference(EjMedicoCirujanoGastroenterologo)

* code = CSPractitionerTipoRolLE#indicador


Instance: EjPractitionerRoleAtendedor
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Atendedor LE"
Description: "Ejemplo de PractitionerRole Atendedor LE"
* id = "4d1c4f8b-1f89-47a3-a765-fdfe5935a3aa"

* organization = Reference(EjOrganizacionEstablecimiento)

* practitioner = Reference(EjMedicoCirujanoGastroenterologo)

* code = CSPractitionerTipoRolLE#atendedor


Instance: EjPractitionerRoleTerminador
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Terminador LE"
Description: "Ejemplo de PractitionerRole Terminador LE"
* id = "5a4ca080-8d59-4409-92f3-e6fc1eb855d6"

* organization = Reference(EjOrganizacionEstablecimiento)

* practitioner = Reference(EjMedicoCirujanoGastroenterologo)

* code = CSPractitionerTipoRolLE#terminador