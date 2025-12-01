### Diagrama de Eventos para el Proceso Quirúrgico no GES 

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="events.png" alt="Events" style="width: 700px"/>
</div>
<br/>

### Atender 
El evento ocurre el momento que un médico cirujano genera una indicación quirúrgica, a su vez durante la atención el médico realiza una priorización del caso.

### Agendar Entrevista
Corresponde al evento de realizar las acciones necesarias para realizar el agendamiento de un paciente al evento entrevista. Este proceso es llevado a cabo por un profesional de enfermería / clínico o técnico de la salud.

### Entrevista
Este evento corresponde a la realización de la entrevista prequirúrgica, en donde se le informa al paciente sobre el proceso prequirúrgico, los exámenes prequirúrgicos a realizarse, los pases médicos cuando sean requeridos, así como los cuidados postoperatorios según el tipo de cirugía. En este enveto se define si la cirugía será realizada en forma ambulatoria (CMA) o con el paciente hospitalizado (CMH).

El evento entrevista prequirúrgica es un evento `obligatorio` y es realizado por un profesional de enfermería o profesional clínico.

### Agendar Cirugía
El evento agendar cirugía realiza las acciones que corresponden para la ejecución de la programación quirúrgica.  El evento está a cargo de la enfermera coordinadora de pabellones.

Tiene como objetivo la planificación y definición de la agenda de pacientes que deben ser operados, comenzando con el paciente en estado programable para cirugía y finalizando cuando está incluido y confirmado en la tabla quirúrgica diaria.  

La tabla quirúrgica se realiza de manera semanal, para garantizar la planificación y coordinación de los recursos requeridos, así como también, de forma diaria para garantizar la correcta ejecución de la programación quirúrgica.

La confirmación de la tabla quirúrgica permite revisar la agenda de los usuarios para el día siguiente, confirmar asistencia y realizar las modificaciones necesarias.

### Cirugía
El subproceso quirúrgico inicia en el momento en que el paciente en estado programado ingresa administrativamente a la unidad Hospitalaria (CDT o similar) donde se realizará la intervención quirúrgica y termina en el momento el que el paciente egresa de la Unidad de Pabellón con la indicación del profesional encargado de la cirugía de traslado al lugar donde se realizará el subproceso postoperatorio, así como las observaciones que puedan existir durante dicho proceso.

### Cierre
Esta acción permitirá dar por cerrado el proceso de lista de espera quirúrgica. Para esta guía de implementación se considera el flujo hasta la realización de la cirugía y el envío del cierre.

