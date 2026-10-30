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
  **AI proposed:** Agregar "manejar carro o moto" a los ejemplos de tiempo muerto (P5) y a la matriz de estudio en voz alta (P7), sin incluirlo en la hipotética (P8); y agregar "usar el celular" a lo que hacen en esos momentos (P6).
  **Human decided:** Nada sobre conducir; P5 a P8 quedan como estaban, también sin "usar el celular".
  **Why:** No se explicitó en esta revisión; es coherente con la decisión del 2026-10-27 de no considerar la conducción como tiempo muerto por seguridad.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md, product/opportunities/2026-10-21-1203-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Contar la recurrencia por objetivo completo (cada certificación como uno y cada posgrado o carrera como uno solo), con las mismas P9 y P10 para todos.
  **Human decided:** La unidad es el ciclo que se cobraría: el examen en el grupo A; la materia o, como mucho, el semestre en posgrado y carrera. P9 y P10 tienen dos versiones (P9b y P10b para los grupos B y D: materias por semestre y semestres restantes), con una pregunta nueva sobre la duración de la preparación para el grupo A (P10a). En la oportunidad, la idea de cobro por ciclo se redefine así.
  **Why:** El cobro debe ser más pequeño y ligado al objetivo, y el research de mercado muestra que el segmento paga por ciclo, con planes que duran lo que dura la meta.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Un texto de bienvenida que nombraba a quienes preparan un examen, una certificación o un posgrado, y a quienes estudian sin fecha.
  **Human decided:** Pidió opciones que minimizaran el sesgo y eligió la más amplia y neutra: no menciona atraso, voz, tiempo muerto ni el producto, ni privilegia un tipo de estudio.
  **Why:** Minimizar al máximo el riesgo de sesgo en quién responde.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Dos caminos para los perfiles sin opción en el filtro (F3): ampliar el grupo A a cualquier examen con fecha, o dejarlo solo en certificaciones profesionales y dar opción propia a los demás.
  **Human decided:** Ampliar el grupo A a certificación o examen con fecha o plazo definido (idioma, residencia, ingreso, concurso), y agregar el grupo D (pregrado, técnico o tecnológico).
  **Why:** Que nadie con fecha caiga en el grupo de comparación; F5 permite separar después las certificaciones profesionales.

- **Artifact:** product/surveys/2026-10-27-2223-repaso-atrasado-examen-con-fecha.md
  **AI proposed:** Ajustes de la revisión, aceptados tal como se propusieron: P1 redactada para quien ya terminó de estudiar; A1 solo para quien trabaja y estudia, y opcional; P11 como gasto de bolsillo, con dos "Nada" (pagó la empresa o una beca / solo recursos gratuitos); regla de análisis fijada antes de los datos para la causa "organizar" en P2; quitar la abierta sobre estudiar en movimiento (A2), con la encuesta bajando a unos 6 minutos; rangos de atraso sin hueco y redacción neutra en género en P1 y P2.
  **Human decided:** Aceptados.
  **Why:** Corrigen errores de diseño de la versión anterior de la encuesta (preguntas que no aplicaban a parte de los encuestados, opciones que se cruzaban, una medición sesgable y una duración por encima de la recomendada).
