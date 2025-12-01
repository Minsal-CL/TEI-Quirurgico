El recurso Transversal para el procedo de Lista de Espera Quirúrgica No GES es el `ServiceRequest` con su identifier (IdQuirurgica).

### Transacción evento Atender

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atender</td>
      <td>
        El evento ocurre el momento que un médico cirujano genera una indicación quirúrgica, a su vez durante la atención el médico realiza una priorización del caso.
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>


#### Diagrama de secuencia

El evento atender debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="atender.png" alt="atender" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento atender usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Atender`, esta información va representada de manera general en el `ServiceRequest`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

No existen precondiciones para este evento.

#### Acciones esperadas

- Creación de una indicación quirúrgica.

### Transacción evento Agendar Entrevista

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Agendar entrevista</td>
      <td>
        Corresponde al evento de realizar las acciones necesarias para realizar el agendamiento de un paciente al evento entrevista. Este proceso es llevado a cabo por un profesional de enfermería / clínico o técnico de la salud. 
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento `Agendar Entrevista` debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="agendar-entrevista.png" alt="agendar-entrevista" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Agendar Entrevista usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Agendar Entrevista`, esta información va representada de manera general en el `Appointment`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe haber ocurrido un evento atender.

#### Acciones esperadas

- Creación de un agendamiento para entrevista.

### Transacción evento Entrevista

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Entrevista</td>
      <td>
        Este evento corresponde a la realización de la entrevista prequirúrgica, en donde se le informa al paciente sobre el proceso prequirúrgico, los exámenes prequirúrgicos a realizarse, los pases médicos cuando sean requeridos, así como los cuidados postoperatorios según el tipo de cirugía. En este enveto se define si la cirugía será realizada en forma ambulatoria (CMA) o con el paciente hospitalizado (CMH).

        El evento entrevista prequirúrgica es un evento obligatorio y es realizado por un profesional de enfermería o profesional clínico.
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento `Entrevista` debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="entrevista.png" alt="entrevista" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Entrevista usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Entrevista`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe haber ocurrido un evento atender.
- Debe haberse agendado una entrevista

#### Acciones esperadas

- Creación de un Encuentro con los datos necesarios de información al paciente.

### Transacción evento Agendar Cirugía

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Agendar Cirugía</td>
      <td>
        El evento agendar cirugía realiza las acciones que corresponden para la ejecución de la programación quirúrgica.  El evento está a cargo de la enfermera coordinadora de pabellones. 
        Tiene como objetivo la planificación y definición de la agenda de pacientes que deben ser operados, comenzando con el paciente en estado programable para cirugía y finalizando cuando está incluido y confirmado en la tabla quirúrgica diaria.  
        La tabla quirúrgica se realiza de manera semanal, para garantizar la planificación y coordinación de los recursos requeridos, así como también de forma diaria para garantizar la correcta ejecución de la programación quirúrgica.
        La confirmación de la tabla quirúrgica permite revisar la agenda de los usuarios para el día siguiente, confirmar asistencia y realizar las modificaciones necesarias.
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento `Agendar Cirugía` debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="tabla-quirurgica.png" alt="tabla-quirurgica" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Agendar Cirugía usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Agendar Cirugía`, esta información va representada de manera general en el `Appointment`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe haber sido evaluado en una entrevista prequirúrgica.

#### Acciones esperadas

- Creación de un agendamiento para pabellón.

### Transacción evento Cirugía

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Cirugía</td>
      <td>
      El subproceso quirúrgico inicia en el momento en que el paciente en estado programado ingresa administrativamente a la unidad Hospitalaria (o CDT o similar) donde se realizará la intervención quirúrgica y termina en el momento el que el paciente egresa de la Unidad de Pabellón con la indicación del profesional encargado de la cirugía de traslado al lugar donde se realizará el subproceso postoperatorio, así como las observaciones que puedan existir durante dicho proceso.
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento `Cirugía` debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="cirugia.png" alt="cirugia" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Cirugía usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Cirugía`, esta información va representada de manera general en el `Procedure`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe haber sido agendado y confirmado en la tabla quirúrgica.

#### Acciones esperadas

- Creación de un recurso procedure que contiene información de la intervención.


### Transacción evento Cierre

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Cierre</td>
      <td>
        El subproceso quirúrgico inicia en el momento en que el paciente en estado programado ingresa administrativamente a la unidad Hospitalaria (o CDT o similar) donde se realizará la intervención quirúrgica y termina en el momento el que el paciente egresa de la Unidad de Pabellón con la indicación del profesional encargado de la cirugía de traslado al lugar donde se realizará el subproceso postoperatorio, así como las observaciones que puedan existir durante dicho proceso.
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento `Cierre` debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="cierre.png" alt="cierre" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Cierre usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Cierre`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe haber atendido por un profesional para ser intervenido.

#### Acciones esperadas

- Actualización del recurso ServiceRequest (finalizado) y agregar información de cierre.