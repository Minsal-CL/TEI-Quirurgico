Las siguientes corresponden a las historias que definen las interacciones entre los usuarios con el proceso de atención de lista de espera quirúrgica No GES interoperable. Las historias se definen según el siguiente esquema: “Como , yo <quiero/puedo/necesito> para poder <objetivo/meta>.”

### Indicador
Ingreso del Paciente a la LE Quirúrgica No GES

**Historia**
Como indicador, yo quiero registrar la indicación de cirugía de un paciente.

**Criterios de aceptación**
Verificar que el indicador pueda ingresar la información obligatoria y/o opcional para el registro de un procedimiento quirúrgico a la lista de espera No GES:
- Información Administrativa (Paciente, Profesional, Establecimiento)
- Información de la atención 
- Información Clínica 
- Información de la cirugía propuesta 


**Resultado de la acción**
La información del registro del procedimiento quirúrgico se realiza correctamente.


### Agendador
Realizar el agendamiento efectivo de una entrevista prequirúrgica 

**Historia**
Como agendador, yo quiero registrar un agendamiento para posteriormente realizar la entrevista prequirúrgica.

**Criterios de aceptación**
Se deberá enviar como mínimo la información obligatoria y/o opcional:

- Información Administrativa (Paciente, Profesional, Establecimiento)
- Información de agendamiento (Medio de notificación, Fecha Cita Entrevista)
 
**Resultado de la acción**
El agendador puede asignar un paciente asociándo a un número de interconsulta a un bloque horario de atención (Slot), generando una cita (Appointment) en estado de “agendado” (booked). También puede registrar cuando no es posible contactar al/la usuario/a o no asiste a su cita.


### Entrevistador
Como entrevistador, quiero realizar la entrevista previa a la cirugía a un paciente.

**Historia**
Como entrevistador, quiero poder ingresar la información de la entrevista realizada previo a la realización de la cirugía.

**Criterios de aceptación**
Verificar que el entrevistador pueda ingresar la información obligatoria y/o opcional de la entrevista realizada.

- Información Administrativa (Paciente, Profesional, Establecimiento)
- Información de la atención 
- Información de la Entrevista 

**Resultado de la acción**
Se realiza el registro correcto de la entrevista realizada por el entrevistador para continuar con el proceso de agendar la tabla quirúrgica si el paciente tiene todos los documentos para ejecutar el procedimiento quirúrgico. También se podrá registrar si es necesario solicitar más exámenes o si no es necesario realizar la cirugía.


### Planificador
Como planificador, quiero realizar la planificación de la tabla quirúrgica.

**Historia**
Como planificador, quiero poder registrar la información de la tabla quirúrgica.

**Criterios de aceptación**
Verificar que el planificador pueda ingresar la información obligatoria y/o opcional de la tabla quirúrgica.

- Información Administrativa (Paciente, Profesional, Establecimiento)
- Información de agendamiento (Medio de notificación, Fecha Cita Entrevista)
- Información de quirófano 

**Resultado de la acción**
Se realiza el registro correcto del agendamiento en la tabla quirúrgica asociando a un número de atención a un bloque horario de atención (Slot), generando una cita (Appointment) en estado de “agendado” (booked). También puede registrar cuando no es posible contactar al/la usuario/a o no asiste a su cita.

### Atendedor
Como atendedor, quiero realizar las acciones realizadas en la cirugía.

**Historia**
Como atendedor, quiero poder registrar la información realizada durante la cirugía.

**Criterios de aceptación**
Verificar que un atendedor puede registrar la información de la cirugía asociada a un encuentro de salud en relación con la tabla quirúrgica asignada.

- Información Administrativa (Paciente, Profesional, Establecimiento)
- Información de la cirugía.
- Información del procedimiento realizado.
- Información de quirófano.

**Resultado de la acción**
Se realiza el registro correcto de la cirugía realizada por el atendedor (Médico cirujano u Odontólogo con especialidad quirúrgica).

### Terminador
Como terminador quiero terminar el proceso de atención de lista de espera quirúrgica No GES.

**Historia**
Como terminador, quiero egresar al usuario paciente de lista de espera quirúrgica por las diferentes causales.

**Criterios de aceptación**
Verificar que un terminador puede realizar el registro del egreso de un paciente en la atención quirúrgica:

- Información Administrativa (Paciente, Profesional, Establecimiento)
- Información de la cirugía.


**Resultado de la acción**
El usuario es egresado de la Lista de Espera por alguna de las causales definidas en la Norma Técnica N°118.
