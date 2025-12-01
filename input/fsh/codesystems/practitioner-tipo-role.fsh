CodeSystem: CSPractitionerTipoRolLE
Id: CSPractitionerTipoRolLE
Title: "Rol de profesionales"
Description: "CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la lista de espera quirúrgica"	
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.9"
* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #indicador "Indicador" "Médico cirujano u odontólogo con especialidad quirúrgica a cargo de realizar la indicación de cirugía, y la priorización. Actúa dentro del evento atender."
* #agendador "Agendador" "Profesional de enfermería / clínico o técnico de la salud a cargo de realizar el agendamiento de la entrevista prequirúrgica."
* #entrevistador "Entrevistador" "Profesional de enfermería o profesional clínico de la salud a cargo de realizar la encuesta prequirúrgica, exámenes prequirúrgicos, pases médicos cuando sean requeridos, así como realiza la indicación de los cuidados postoperatorios según el tipo de cirugía, definir si la cirugía será realizada en forma ambulatoria (CMA) o con el paciente hospitalizado (CMH) e informar al paciente de estas decisiones."
* #planificador "Planificador" "En el caso del agendamiento de la tabla quirúrgica será realizado para el profesional de enfermería encargada de los pabellones."
* #atendedor "Atendedor" "Primer cirujano a cargo de realizar la cirugía y todos los procedimientos a realizarse en el proceso."
* #terminador "Terminador" "Profesional Médico, no médico o administrativo a cargo de registrar la causal de egreso de la lista de espera quirúrgica."