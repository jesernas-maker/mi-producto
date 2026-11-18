# Correcciones

Registro de lo que se corrigió de lo que propuso la IA, y por qué. Cada `/review-evidence` agrega una entrada fechada; la última marca dónde terminó la revisión anterior.

## 2026-10-27

Primera revisión de evidencia: cubrió todo el historial (2026-10-07 a 2026-10-27). Incluyó la revisión de las sugerencias de otra IA sobre el trabajo hecho hasta el research de mercado.

- **Artifact:** product/overview.md
  **AI proposed:** La gestión automática del plan como valor central de BrainWhisper (creencia 1 como la primera a atacar).
  **Human decided:** El valor central es convertir el tiempo muerto en estudio altamente efectivo; la gestión del plan es el apoyo. Se agregó la hipótesis de valor central, la creencia 8 (eficiencia del repaso activo) y se priorizan las creencias 3 y 8.
  **Why:** Ataca la falta de tiempo, que es la causa a la que apunta el research, y el plan que se ajusta solo ya lo ofrecen otros: no diferencia.

- **Artifact:** product/personas/andres-molina.md, product/personas/valentina-rojas.md
  **AI proposed:** Dos personas primary con el mismo peso, y la recomendación de que Valentina (residencia médica) fuera la persona de diseño.
  **Human decided:** Andrés es la persona de diseño, en el área de IA, data science y producto, con una certificación con examen agendado sin nombrar cuál; Valentina es la comparativa.
  **Why:** Es el entorno de la PM: puede encuestar y entrevistar a esas personas, y así no compara peras con manzanas.

- **Artifact:** product/personas/valentina-rojas.md, product/opportunities/2026-10-21-1203-repaso-atrasado-examen-con-fecha.md, product/overview.md
  **AI proposed:** Personas y segmento centrados en el examen de residencia médica y en otros países (México, Argentina, Chile).
  **Human decided:** Segmento ampliado a evaluaciones con fecha (certificaciones y exámenes de posgrado); Valentina es una profesional que trabaja y cursa un posgrado en general, sin turnos; el descubrimiento se hace en Colombia.
  **Why:** Medicina es un campo de difícil acceso para la PM; lo que se valida tiene que ser con gente a la que puede llegar, y lo aprendido vale para Colombia hasta comprobarlo en otros países.

- **Artifact:** product/personas/andres-molina.md
  **AI proposed:** El auto como tiempo muerto principal (70 min diarios) e hijos pequeños como la restricción fija de sus noches.
  **Human decided:** Transporte público, pasear al perro, ejercicio y tareas del hogar como tiempo muerto; la restricción de las noches queda abierta (ejercicio, familia, oficios).
  **Why:** Hablar con un asistente mientras se conduce es un riesgo de seguridad; lo que importa es que necesita optimizar el tiempo, no la circunstancia exacta.

- **Artifact:** product/opportunities/2026-10-21-1203-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Una prueba de solución pagada de 3 meses con fecha en marzo de 2027.
  **Human decided:** Sin fecha, condicionada a que la encuesta y las entrevistas sostengan las creencias de valor, con una preventa de 2–4 semanas como primer paso.
  **Why:** La PM no tenía nada planeado para 2027; la IA fijó la fecha sin que se decidiera.

- **Artifact:** product/personas/patricia-lozano.md, product/personas/juliana-ospina.md
  **AI proposed:** Una sola persona tertiary: directora de una academia de residencia médica en Ciudad de México.
  **Human decided:** Dos personas tertiary para el B2B futuro: Juliana Ospina, formación en empresas (opción A), y la Dra. Patricia Lozano, profesora y coordinadora de posgrado (opción B).
  **Why:** A está más alineada con la persona de diseño; B es a quien la PM puede llegar para entrevistar.

## 2026-10-30

Revisión de la encuesta (`/survey-design`) frente a las personas, hecha antes del envío. No es una `/review-evidence`: la próxima debe empezar a revisar desde la entrada del 2026-10-27.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Una meta de 10 respuestas para el grupo C (estudia sin fecha), igual que el grupo A.
  **Human decided:** 5 respuestas por ahora.
  **Why:** No se explicitó; queda como meta provisional.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Agregar "manejar carro o moto" a los ejemplos de tiempo muerto (P3) y a la matriz de estudio en voz alta (P5), sin incluirlo en la hipotética (P6); y agregar "usar el celular" a lo que hacen en esos momentos (P4).
  **Human decided:** Nada sobre conducir; P3 a P6 quedan como estaban, también sin "usar el celular".
  **Why:** No se explicitó en esta revisión; es coherente con la decisión del 2026-10-27 de no considerar la conducción como tiempo muerto por seguridad.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md, product/opportunities/2026-10-21-1203-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Contar la recurrencia por objetivo completo (cada certificación como uno y cada posgrado o carrera como uno solo), con las mismas preguntas de recurrencia para todos (P10 y P11).
  **Human decided:** La unidad es el ciclo que se cobraría: el examen en el grupo A; la materia o, como mucho, el semestre en posgrado y carrera. La recurrencia tiene dos versiones (P10 y P11 para exámenes; P13 y P14 para los grupos B y D: materias por semestre y semestres restantes), con una pregunta nueva sobre la duración de la preparación para el grupo A (P12). En la oportunidad, la idea de cobro por ciclo se redefine así.
  **Why:** El cobro debe ser más pequeño y ligado al objetivo, y el research de mercado muestra que el segmento paga por ciclo, con planes que duran lo que dura la meta.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Un texto de bienvenida que nombraba a quienes preparan un examen, una certificación o un posgrado, y a quienes estudian sin fecha.
  **Human decided:** Pidió opciones que minimizaran el sesgo y eligió la más amplia y neutra: no menciona atraso, voz, tiempo muerto ni el producto, ni privilegia un tipo de estudio.
  **Why:** Minimizar al máximo el riesgo de sesgo en quién responde.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Dos caminos para los perfiles sin opción en la pregunta de grupo (P7): ampliar el grupo A a cualquier examen con fecha, o dejarlo solo en certificaciones profesionales y dar opción propia a los demás.
  **Human decided:** Ampliar el grupo A a certificación o examen con fecha o plazo definido (idioma, residencia, ingreso, concurso), y agregar el grupo D (pregrado, técnico o tecnológico).
  **Why:** Que nadie con fecha caiga en el grupo de comparación; P9 permite separar después las certificaciones profesionales.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Ajustes de la revisión, aceptados tal como se propusieron: P15 redactada para quien ya terminó de estudiar; la abierta sobre lo más difícil (P20) solo para quien trabaja y estudia, y opcional; P19 como gasto de bolsillo, con dos "Nada" (pagó la empresa o una beca / solo recursos gratuitos); regla de análisis fijada antes de los datos para la causa "organizar" en P16; quitar la abierta sobre estudiar en movimiento, con la encuesta bajando a unos 6 minutos; rangos de atraso sin hueco y redacción neutra en género en P15 y P16.
  **Human decided:** Aceptados.
  **Why:** Corrigen errores de diseño de la versión anterior de la encuesta (preguntas que no aplicaban a parte de los encuestados, opciones que se cruzaban, una medición sesgable y una duración por encima de la recomendada).

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Una bienvenida que decía "tus respuestas son anónimas" sin salvedad (la IA no lo detectó en la revisión; lo encontró después, al recomendar la herramienta).
  **Human decided:** Aceptó la corrección: "Tus respuestas son anónimas, salvo que al final decidas dejar tu contacto para conversar con nosotros; hacerlo es opcional."
  **Why:** Quien deja su contacto en R3 queda identificado junto con todas sus respuestas; prometer anonimato sin salvedad no es honesto con el encuestado.

## 2026-11-06

Adaptación de la encuesta a Forms antes del envío. No es una `/review-evidence`. Los números de pregunta de todas las entradas de este archivo corresponden a la numeración actual de la encuesta.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Dos formas de resolver las condiciones que dependían de una respuesta anterior a la inmediata (el bloque de recurrencia según el grupo, la abierta sobre lo más difícil y el gasto de bolsillo): reordenar en pistas por grupo, o una sola versión con opciones de "no aplica". Al aplicar la primera, conservó los números viejos y agregó notas de cambio.
  **Human decided:** Pistas por grupo, con la encuesta reescrita limpia: numeración corrida en el orden en que se ven (P1 a P20, R1 a R3), sin notas de cambio, y las referencias actualizadas en otros artefactos. El bloque de tiempo con manos libres y voz alta va antes de la pregunta de grupo; P20 se reformula para todo el que estudia ("junto con tus otras obligaciones") y P19 y P20 ya no se muestran a quien no estudia.
  **Why:** Forms solo decide el camino con la respuesta actual; las pistas mantienen la encuesta igual de corta. Una reestructuración es el momento de simplificar, no de acumular parches.

## 2026-11-09

Ajuste de la encuesta al montarla en Forms. No es una `/review-evidence`.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Rangos de gasto de bolsillo en P19: menos de 100.000 COP, de 100.000 a 500.000, de 500.000 a 1.500.000 y más de 1.500.000.
  **Human decided:** Los mismos rangos con un cero menos: menos de 10.000 COP, de 10.000 a 50.000, de 50.000 a 150.000 y más de 150.000.
  **Why:** No se explicitó.

## 2026-11-17

Exploración de soluciones (`/explore-solutions`) para repaso-atrasado-examen-con-fecha. No es una `/review-evidence`.

- **Artifact:** product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Separar el plan automático del compañero de repaso por voz y parquearlo, por ser el mismo mecanismo con algo encima; luego probar en paralelo BrainWhisper y un kit para la IA de voz que ya usan, presentando el kit como la amenaza de BrainWhisper.
  **Human decided:** El plan automático es la esencia de BrainWhisper (con la opción de repasar sin plan si la persona lo pide), así que compañero y plan son una sola alternativa. Se elige solo BrainWhisper, y el kit, con el plan, las correcciones y la memoria de errores administrados a mano, es el instrumento para probarlo, no una alternativa que compita.
  **Why:** BrainWhisper debe hacerlo todo por la persona y llevar el ritmo del plan según el material; el kit administrado a mano es la forma más barata de validar si vale la pena construirlo.

Ajustes tras el feedback de la unidad sobre el análisis, las alternativas y la prueba. No es una `/review-evidence`.

- **Artifact:** product/insights/2026-11-17-1727-repaso-activo-manos-libres.md, product/overview.md, product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Marcar como confirmadas la creencia 3 (voz en el trayecto) y la 9 (el repaso activo no cabe en el día).
  **Human decided:** Fortalecidas, de forma direccional, en los tres archivos.
  **Why:** Con 3 entrevistas, "confirmada" deja poco margen si aparece contraevidencia; "fortalecida" mantiene el aprendizaje abierto.

- **Artifact:** product/insights/2026-11-17-1727-repaso-activo-manos-libres.md
  **AI proposed:** Insights por tema, sin cruzar variables.
  **Human decided:** Pidió cuatro cruces: rato × pena × formato; tipo de contenido × examen; abandono por tecleo × franja horaria; duración del trayecto × tope de ChatGPT de voz. Lo que las entrevistas no alcanzan a medir (el porcentaje del temario que cabe en voz, cuántas sesiones corta el tope) pasa a *Pendiente* y al registro de la prueba.
  **Why:** El material ya permitía ver dónde gana de verdad la voz y afinar el caso de uso; sin cruces, eso quedaba implícito.

- **Artifact:** product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Viabilidad de A3 y A4 como "weak (assumption)", y la señal y el umbral de la prueba de A1 para después.
  **Human decided:** Viabilidad de A3 y A4 como "unknown" hasta tener señal. En la prueba de A1, umbrales fijados antes de correrla, parada temprana en la semana 1, registro de la causa de abandono y una clasificación de errores para medir la memoria entre sesiones; la exactitud ceñida a la fuente va primero en la auditoría.
  **Why:** Un supuesto sin señal no es una señal débil.

- **Artifact:** product/overview.md, product/opportunities/2026-10-21-1203-repaso-atrasado-examen-con-fecha.md, product/insights/2026-11-17-1727-repaso-activo-manos-libres.md, product/personas/natalia-cardenas.md, product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Contar el repaso de Lucía manejando como trayecto, y una creencia 3 con "transporte público o carro".
  **Human decided:** Manejando no cuenta como trayecto. La creencia 3 queda solo en transporte público; lo de Lucía manejando sigue en la transcripción y como prueba de que le falta corrección, pero no como un uso del producto. Su rato válido es el oficio en la casa.
  **Why:** Coherente con la decisión del 2026-10-27: hablar con un asistente mientras se conduce es un riesgo de seguridad. Consecuencia: el trayecto en transporte público queda con un solo caso real (Mateo), en tensión con la encuesta. Fijar el umbral antes evita leer el resultado a conveniencia, y la parada temprana ahorra esfuerzo si la señal es baja.

Diseño de las pruebas de solución (`/design-solution-tests`). No es una `/review-evidence`.

- **Artifact:** product/tests/2026-11-17-2247-repaso-atrasado-examen-con-fecha.md, product/overview.md
  **AI proposed:** Una sola prueba previa del kit (T1) con una clave de preguntas armada por una persona, que solo medía la corrección.
  **Human decided:** Probar también que el kit genere las preguntas desde el material y que la repetición espaciada programe cada pregunta según su estado. Quedan tres pruebas previas (generación, corrección, repetición espaciada), iterables hasta 3 veces antes del concierge, y una creencia nueva (#13).
  **Why:** Generar buenas preguntas y definir la frecuencia de cada una son críticos para BrainWhisper; con una clave hecha a mano no se probaban.

- **Artifact:** product/tests/2026-11-17-2247-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** 5 participantes en el concierge (T4) o, si eran menos, tratarlo como primer paso antes de una prueba con 5.
  **Human decided:** 2 participantes, Eliana y Mateo, y que T4 dé el resultado: si pasa, BrainWhisper va a la spec. "La mayoría" son las dos; el plan de exposición de la spec amplía a más usuarios.
  **Why:** No se explicitó.

- **Artifact:** product/tests/2026-11-17-2247-repaso-atrasado-examen-con-fecha.md, product/overview.md
  **AI proposed:** Cambiar la condición "al final la prefiere a lo que usaba" por un compromiso: acepta seguir hasta su examen y hace al menos una sesión la semana siguiente. Correr T1 a T3 con el material de los dos participantes.
  **Human decided:** Aceptados.
  **Why:** Preguntar qué prefiere es una opinión; aceptar y seguir es comportamiento. Con el material de los participantes se prueba lo mismo que usarán en T4.
