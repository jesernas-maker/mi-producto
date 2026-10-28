---
status: framed
segment: Adultos que trabajan y estudian, con poco tiempo de escritorio por compromisos laborales o personales, que preparan evaluaciones con fecha que no pueden mover (certificaciones profesionales o exámenes de posgrado); descubrimiento inicial en Colombia
personas: andres-molina, valentina-rojas, matias-herrera, juliana-ospina, patricia-lozano, diego-fuentes
---

# Oportunidad: El repaso que se atrasa y no se recupera

Quienes preparan una evaluación con fecha (una certificación o los exámenes de un posgrado) mientras trabajan ven cómo su plan de repaso se atrasa y no se recupera. El poco tiempo de escritorio se va en decidir qué estudiar, y las horas de tiempo muerto en movimiento solo admiten escucha pasiva. El momento es ahora: la IA ya resuelve parte del problema (resúmenes en audio, modos de voz), pero de forma pasiva o sin continuidad entre sesiones, y el segmento la usa igual.

## Segmento y personas
- Andrés Molina (primary, persona de diseño): sufre el problema. PM que prepara una certificación en IA o data science; 1 h 20 min diarios en transporte público, más pasear al perro, correr y tareas del hogar; estudia de noche, cansado, con el curso estancado.
- Valentina Rojas (primary, comparativa): sufre el problema. Trabaja y cursa un posgrado; 90 min diarios en transporte público; el cronograma del semestre se le cae tras cada semana de mucha carga laboral.
- Matías Herrera (secondary): no lo sufre tal como está enunciado. Tiene tiempo de escritorio; su repaso se atrasa porque estudia en ráfagas, no por falta de escritorio.
- Juliana Ospina (tertiary, opción A del B2B): no lo sufre. Líder de formación en una empresa que paga certificaciones y ve cómo se posponen; puede informar la viabilidad de vender a empresas. Alineada con la persona de diseño, pero más difícil de contactar.
- Dra. Patricia Lozano (tertiary, opción B del B2B): no lo sufre. Profesora y coordinadora de posgrado que ve a sus estudiantes dejar el cronograma a mitad de semestre; puede informar la viabilidad de vender a universidades. Más fácil de contactar.
- Diego Fuentes (negative): no lo sufre. Sostiene su rutina sin esfuerzo y disfruta planificarla; marca el límite del segmento.
- Faltante: ninguna.

## Señales
| Señal | Procedencia | Fuente |
|---|---|---|
| El cronograma del semestre se atrasa tras cada semana de mucha carga laboral y se abandona durante días | synthetic | personas/valentina-rojas.md |
| Pierde una hora cada domingo decidiendo qué estudiar y casi nunca cumple el plan | synthetic | personas/valentina-rojas.md |
| Los resúmenes en audio (NotebookLM) y los podcasts en el transporte no le sirven para recordar ni para responder preguntas de examen | synthetic | personas/valentina-rojas.md, personas/andres-molina.md |
| Curso estancado en 40 % hace dos meses; relee el mismo módulo dos o tres veces; ya pospuso el examen una vez | synthetic | personas/andres-molina.md |
| Cerca de un tercio de los estudiantes de posgrado deja el cronograma del semestre hacia la mitad, sobre todo quienes trabajan jornada completa | synthetic | personas/patricia-lozano.md |
| Las certificaciones que paga la empresa se posponen y el avance en los cursos se estanca a mitad de camino | synthetic | personas/juliana-ospina.md |
| El segmento dispone de 1–2 h diarias de tiempo muerto (transporte público, pasear al perro, tareas mecánicas, ejercicio) | unverified | Planteamiento del usuario; las horas reales las mide la encuesta |
| En Bogotá, el trayecto en transporte público es de unos 83 min de ida | secondary | research/2026-10-21-1739-repaso-atrasado-examen-con-fecha.md (CEPAL) |
| La causa principal del abandono es la fatiga de decisión, no la falta de motivación ni de material | unverified | Planteamiento del usuario; en tensión con el research: la literatura apunta a tiempo y obligaciones |
| Las herramientas pasivas retienen poco: practicar recordando supera claramente a releer (g ≈ 0,61), y decirlo en voz alta suma poco por sí solo | secondary | research/2026-10-21-1739-repaso-atrasado-examen-con-fecha.md (metaanálisis de práctica de recuperación; efecto de producción) |
| Las herramientas activas exigen pantalla y configuración manual | unverified | Planteamiento del usuario |
| Las personas del segmento encadenan objetivos de estudio a lo largo del tiempo, no solo un examen | unverified | Observación del usuario, sin fuente nombrada |

## Resultado de negocio
Comercial: conversión de free a pago e ingreso sostenido durante todo el ciclo de preparación, y recurrencia en los objetivos siguientes. El modelo de cobro (suscripción mensual, ciclo completo o híbrido) no está decidido: compite como idea candidata. El atraso del plan es lo que provoca el abandono a mitad del ciclo.

## Restricciones
- El primer usuario es B2C; el B2B (academias, universidades) queda fuera hasta probar el valor (overview).
- Idioma: el diseño y las pruebas iniciales se hacen solo en español. No hay restricción de idiomas a futuro.
- Exactitud del contenido: en dominios como la salud, un dato incorrecto tiene consecuencias y el segmento ya desconfía de la IA por eso (synthetic: Valentina, Patricia). Es un hecho del dominio, no una normativa formal evaluada.
- Derechos sobre el material de estudio (apuntes de academias, libros): sin evaluar.
- Presupuesto y fecha: sin límite definido por ahora.

## Creencias
Referencias a product/overview.md, el registro único:
- [product] [value] #2: Quienes necesitan retener mucho material no logran mantener una rutina de repaso sostenida, y la causa principal es el trabajo de organizarla, no la falta de motivación ni de tiempo.
- [product] [value] #3: El usuario objetivo tiene momentos con las manos libres y estaría dispuesto a usarlos para estudiar de forma activa, respondiendo en voz alta.
- [product] [value] #4: Hay un segmento concreto, probablemente profesionales que preparan un examen con fecha, en el que este dolor es bastante más agudo, lo bastante para cambiar de herramienta.
- [product] [viability] #5 (relacionada): pagarían entre 8 y 15 USD al mes.
- [opportunity: repaso-atrasado-examen-con-fecha] [viability] #6: Quien paga lo hace durante todo su ciclo de preparación, sea con suscripción o pago del ciclo completo (franja: < 30 % cubre 3 meses de precio cae, 30–50 % zona gris, ≥ 50 % se sostiene).
- [opportunity: repaso-atrasado-examen-con-fecha] [viability] #7: Al terminar su examen, una parte relevante del segmento enfrenta otro objetivo de estudio con fecha en los 12 meses siguientes (< 20 % cae, 20–40 % zona gris, ≥ 40 % se sostiene).

## Quién responde cada creencia
| Creencia | Quién responde |
|---|---|
| #1 plan automático | Usuarios: entrevistas sobre lo que hacen hoy; la prueba definitiva es el uso de algo parecido |
| #2 causa = organizar | Usuarios: encuesta y entrevistas |
| #3 manos libres + voz alta | Usuarios: encuesta y entrevistas |
| #4 segmento más agudo | Usuarios: encuesta, con grupo de comparación sin fecha |
| #8 eficiencia del repaso activo | Usuarios: prueba de solución (comparar con su método actual) |
| #5 precio 8–15 USD/mes | Negocio: prueba de pago real (lo que dicen que pagarían vale poco) |
| #6 pago durante el ciclo | Negocio: retención de pago real |
| #7 recurrencia | Usuarios en la encuesta (lo que esperan); después, negocio (lo que pasa de verdad) |

Las creencias #2 y #3 se mantienen separadas (decidido 2026-10-27): si una se sostiene y la otra no, una creencia fusionada no diría cuál falló.

## Agenda de investigación
| Creencia | Instrumento | Decisión que desbloquea | Para cuándo |
|---|---|---|---|
| #4 segmento más agudo | /research-market: tamaño y gasto del segmento (academias de residencia, certificaciones), herramientas que ya usa y cuánto paga | Confirmar el segmento con fecha como primer usuario | 2026-11-11 |
| #6 pago durante el ciclo | /research-market: retención típica de suscripciones de preparación de exámenes y de EdTech de consumo; cómo cobran hoy academias y bancos de preguntas (por ciclo, por periodo, mensual); costo de adquisición de referencia | Fijar si la franja 30–50 % es económicamente suficiente; qué modelos de cobro entran a competir | 2026-11-11 |
| #2 causa = organizar | /design-survey: cuántos van atrasados respecto a su plan, cuánto y por qué (con opt-in para entrevista) → /design-interview con quienes contradigan la creencia | Si la gestión del plan es el valor central o un complemento | 2026-12-09 |
| #3 manos libres + voz alta | /design-survey (mismo instrumento): horas reales de tiempo muerto y qué hacen hoy en ellas → entrevistas sobre la última vez que intentaron estudiar en movimiento | Si el contexto móvil sin pantalla es el canal principal | 2026-12-09 |
| #1 plan automático | /design-interview (con quienes den opt-in en la encuesta): qué hacen hoy con el cronograma de su curso, su posgrado o su plataforma de preparación, si lo siguen o lo abandonan, cuándo y qué hacen en su lugar | Si la gestión dinámica del plan es el valor central o el producto se queda en "preguntas por voz" | 2026-12-09 |
| #7 recurrencia | /design-survey (mismo instrumento): cuántos objetivos con fecha tuvieron en los últimos 3 años, cuántos esperan en los próximos 12 meses y cómo pagaron su preparación | Si el modelo se rentabiliza por ciclo o por relación continua | 2026-12-09 |
| #6 pago durante el ciclo, #5 precio | Primer paso: preventa de 2–4 semanas con los dos modelos (mensual y "pase hasta tu examen"), con pago o reserva real. Después, si hace falta: prueba de solución pagada (concierge o Wizard of Oz) para medir si siguen pagando durante el ciclo; duración a definir según el ciclo (certificación o semestre de posgrado) | Qué modelo de cobro eligen y si pagan por adelantado; seguir, cambiar el modelo o pivotar a B2B | Sin fecha: solo si la encuesta y las entrevistas sostienen las creencias de valor; se decide después de /explore-solutions |

Las fechas son una propuesta: no hay plazo definido, y una agenda sin fecha se vuelve una lista de lecturas.

**Primer paso único (decidido 2026-10-27):** la encuesta, que cubre la causa del atraso (#2), el tiempo muerto con manos libres (#3) y la recurrencia (#7), con opt-in para entrevista (#1). Filtro: trabaja, vive en Colombia y tiene un examen de certificación o de posgrado con fecha en los próximos meses. También responden quienes estudian sin fecha, como grupo de comparación para #4, analizados por separado y sin mezclar sus respuestas. Las causas del atraso se ofrecen con el mismo peso (falta de tiempo, falta de energía, no saber qué estudiar, material desordenado), para no sesgar hacia #2. La encuesta pregunta en qué momentos concretos de tiempo muerto respondería en voz alta y en cuáles no (p. ej., transporte público lleno frente a pasear al perro). Tamaño de muestra y canales: por definir al diseñarla; con menos de unas 30 respuestas, orienta pero no permite afirmar porcentajes.

## Ideas candidatas (no evaluadas)
- Un sistema que asuma la planificación de la estrategia de retención y ejecute repasos activos por voz, sin pantalla, durante desplazamientos y tareas físicas (la propuesta original; coincide con el concepto actual de BrainWhisper).
- Modelo de cobro: suscripción mensual.
- Modelo de cobro: pago por ciclo completo hasta la fecha del examen.
- Modelo de cobro: híbrido (ciclo completo más continuidad hacia el siguiente objetivo).
