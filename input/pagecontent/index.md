### Alcance
Esta guía de implementación aborda el proceso de lista de espera quirúrgica No GES que comprende un conjunto de actividades asistenciales y no asistenciales centradas en el paciente con una indicación quirúrgica. Para representar este proceso se definen 6 eventos, los cuáles son:
- **Evento Atender**: Entrada al registro de la lista de espera.
- **Evento Agendar Entrevista**: Agendar la entrevista entre el paciente con un profesional.
- **Evento Entrevista**: Realización de la entrevista prequirúrgica.
- **Evento Agendar Cirugía:** Ejecución de la programación quirúrgica.
- **Evento Cirugía**: Realización de la intervención quirúrgica.
- **Evento Cierre**: Termina el proceso de Lista de Espera Quirúrgico No GES y egreso de la LE.

### Introducción
#### Antecedentes

La lista de espera quirúrgica no GES es el registro de pacientes que esperan una atención quirúrgica programada en el servicio público de salud, pero que no está cubierta por el Plan de Garantías Explícitas en Salud (GES).
Incluye todos los pacientes pendientes para una intervención quirúrgica NO GES, indicada por un médico especialista, una vez concluidos sus estudios, independiente de si precisa o no hospitalización y del tipo de anestesia previsto.
La entrada al registro de lista de espera corresponde a la fecha de la indicación de la cirugía, realizada por el médico especialista quirúrgico, y finaliza con el alta quirúrgica que deriva en la entrega del paciente en el destino final de recuperación (domicilio en el caso de cirugía mayor ambulatoria (CMA) o una cama de dotación en el caso de una cirugía mayor hospitalaria (CMH)).


#### Descripción
Se propone desarrollar una guía de implementación que permita hacer trazabilidad del proceso de lista de espera quirúrgica No Ges,  desde que un paciente posee una indicación de cirugía, hasta que se egresa por una alta quirúrgica, esta información estará disponible tanto para el paciente, como para los establecimientos de salud involucrados y el nivel central para la toma de decisiones y mejor gestión de los recursos.
Este proyecto fue ejecutado por un equipo multidisciplinario del Ministerio de Salud, con la participación de profesionales del Departamento de Estadísticas e Información en Salud (DEIS), la División de Gestión de la Red Asistencial (DIGERA), y la Unidad de Interoperabilidad del Departamento de Tecnologías de la Información y Comunicaciones (DTIC). Se ha utilizado una metodología para el rediseño del proceso, optimizando y centrándose en el paciente y se ha implementado bajo el uso estándares internacionales de interoperabilidad.


#### Objetivos del Proyecto 
##### General
- Desarrollar una guía de implementación para el proceso de lista de espera quirúrgica No GES interoperable que respalde la gestión de información, incluyendo su registro, transferencia y análisis. Dicha información es entregada a través de una plataforma que facilite su acceso y almacenamiento de manera precisa y de calidad, en el contexto de la lista de espera quirúrgica no GES para pacientes de la red asistencial.

##### Específicos
- Lograr el intercambio de información entre los diferentes registros clínicos implementados en la red asistencial desde que existe una indicación de cirugía hasta el alta, con la plataforma de interoperabilidad de MINSAL.

- Promover la estandarización de los datos involucrados en el proceso de lista de espera quirúrgica No GES.

- Proporcionar directrices y reglas comunes que faciliten la adopción de estándares de interoperabilidad semánticos y sintácticos, tanto por parte de profesionales clínicos como para los desarrolladores en toda la red asistencial.

- Garantizar que los datos se representen y se compartan de manera coherente entre sistemas, evitando ambigüedades y errores en la interpretación de la información.

#### Objetivos de la Guía de Implementación
##### General
- Brindar las directrices necesarias que garanticen la interoperabilidad con la plataforma de Minsal para el proceso de atención de lista de espera quirúrgica No GES, según los estándares definidos por el Ministerio de Salud.

##### Específicos
- Otorgar las herramientas necesarias para que los sistemas informáticos de registro clínico que interoperan con la plataforma definida por MINSAL para el intercambio de información del proceso de lista de espera quirúrgica No GES, en base al estándar HL7 FHIR.
- Describir los distintos perfiles de usuario del proceso de lista de espera quirúrgica No GES y los recursos asociados a cada uno.
- Ejemplificar los distintos casos de uso asociados al proceso de atención de lista de espera No GES que son aplicables en el día a día.
