---
status: framed
segment: Adultos con trabajo de jornada completa, turnos rotativos o carga familiar que preparan un examen de alto riesgo con fecha fija a 3–12 meses (residencia médica, certificación profesional, colegiatura, examen de grado)
personas: valentina-rojas, andres-molina, matias-herrera, patricia-lozano, diego-fuentes
---

# Oportunidad: El repaso que se atrasa y no se recupera

Quienes preparan un examen de alto riesgo con fecha mientras trabajan ven cómo su plan de repaso se atrasa y no se recupera. El poco tiempo de escritorio se va en decidir qué estudiar, y las horas de tiempo muerto en movimiento solo admiten escucha pasiva. El momento es ahora: la IA ya resuelve parte del problema (resúmenes en audio, modos de voz), pero de forma pasiva o sin continuidad entre sesiones, y el segmento la usa igual.

## Segmento y personas
- Valentina Rojas (primary): sufre el problema. Turnos rotativos y 90 min diarios de bus; el cronograma de la academia se le cae tras cada guardia.
- Andrés Molina (primary): sufre el problema. 70 min diarios en auto más running; estudia de noche, cansado, con el curso estancado.
- Matías Herrera (secondary): no lo sufre tal como está enunciado. Tiene tiempo de escritorio; su repaso se atrasa porque estudia en ráfagas, no por falta de escritorio.
- Dra. Patricia Lozano (tertiary): no lo sufre, pero ve su costo (abandono a mitad de ciclo) y puede informar la viabilidad en un canal B2B futuro.
- Diego Fuentes (negative): no lo sufre. Sostiene su rutina sin esfuerzo y disfruta planificarla; marca el límite del segmento.
- Faltante: ninguna.

## Señales
| Señal | Procedencia | Fuente |
|---|---|---|
| El cronograma fijo de la academia se atrasa una semana tras cada guardia de 24 h y se abandona durante días | synthetic | personas/valentina-rojas.md |
| Pierde una hora cada domingo decidiendo qué estudiar y casi nunca cumple el plan | synthetic | personas/valentina-rojas.md |
| Los resúmenes en audio (NotebookLM) y los podcasts en el transporte no le sirven para recordar ni para responder preguntas de examen | synthetic | personas/valentina-rojas.md, personas/andres-molina.md |
| Curso estancado en 40 % hace dos meses; relee el mismo módulo dos o tres veces; ya pospuso el examen una vez | synthetic | personas/andres-molina.md |
| Cerca de un tercio de los alumnos deja el cronograma hacia el tercer mes, sobre todo los que trabajan con turnos | synthetic | personas/patricia-lozano.md |
| El segmento dispone de 1–2 h diarias de tiempo muerto (conducción, transporte, tareas mecánicas, ejercicio) | unverified | Planteamiento del usuario |
| La causa principal del abandono es la fatiga de decisión, no la falta de motivación ni de material | unverified | Planteamiento del usuario |
| Las herramientas pasivas retienen poco; las activas exigen pantalla y configuración manual | unverified | Planteamiento del usuario (existe literatura sobre práctica de recuperación; sin citar todavía) |
| Las personas del segmento encadenan objetivos de estudio a lo largo del tiempo, no solo un examen | unverified | Observación del usuario, sin fuente nombrada |

## Resultado de negocio
Comercial: conversión de free a pago e ingreso sostenido durante todo el ciclo de preparación, y recurrencia en los objetivos siguientes. El modelo de cobro (suscripción mensual, ciclo completo o híbrido) no está decidido: compite como idea candidata. El atraso del plan es lo que provoca el abandono a mitad del ciclo.

## Restricciones
- El primer usuario es B2C; el B2B (academias, universidades) queda fuera hasta probar el valor (overview).
- Idioma: el diseño y las pruebas iniciales se hacen solo en español. No hay restricción de idiomas a futuro.
- Exactitud del contenido: en dominios como la medicina, un dato incorrecto tiene consecuencias y el segmento ya desconfía de la IA por eso (synthetic: Valentina, Patricia). Es un hecho del dominio, no una normativa formal evaluada.
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

## Agenda de investigación
| Creencia | Instrumento | Decisión que desbloquea | Para cuándo |
|---|---|---|---|
| #4 segmento más agudo | /research-market: tamaño y gasto del segmento (academias de residencia, certificaciones), herramientas que ya usa y cuánto paga | Confirmar el segmento con fecha como primer usuario | 2026-11-11 |
| #6 pago durante el ciclo | /research-market: retención típica de suscripciones de preparación de exámenes y de EdTech de consumo; cómo cobran hoy academias y bancos de preguntas (por ciclo, por periodo, mensual); costo de adquisición de referencia | Fijar si la franja 30–50 % es económicamente suficiente; qué modelos de cobro entran a competir | 2026-11-11 |
| #2 causa = organizar | /design-survey: cuántos van atrasados respecto a su plan, cuánto y por qué (con opt-in para entrevista) → /design-interview con quienes contradigan la creencia | Si la gestión del plan es el valor central o un complemento | 2026-12-09 |
| #3 manos libres + voz alta | /design-survey (mismo instrumento): horas reales de tiempo muerto y qué hacen hoy en ellas → entrevistas sobre la última vez que intentaron estudiar en movimiento | Si el contexto móvil sin pantalla es el canal principal | 2026-12-09 |
| #7 recurrencia | /design-survey (mismo instrumento): cuántos objetivos con fecha tuvieron en los últimos 3 años, cuántos esperan en los próximos 12 meses y cómo pagaron su preparación | Si el modelo se rentabiliza por ciclo o por relación continua | 2026-12-09 |
| #6 pago durante el ciclo | Prueba de solución pagada (concierge o Wizard of Oz) durante 3 meses, ofreciendo suscripción mensual y pago por ciclo, después de /explore-solutions | Qué modelo de cobro eligen; seguir, cambiar el modelo o pivotar a B2B | 2027-03 |

Las fechas son una propuesta: no hay plazo definido, y una agenda sin fecha se vuelve una lista de lecturas.

## Ideas candidatas (no evaluadas)
- Un sistema que asuma la planificación de la estrategia de retención y ejecute repasos activos por voz, sin pantalla, durante desplazamientos y tareas físicas (la propuesta original; coincide con el concepto actual de BrainWhisper).
- Modelo de cobro: suscripción mensual.
- Modelo de cobro: pago por ciclo completo hasta la fecha del examen.
- Modelo de cobro: híbrido (ciclo completo más continuidad hacia el siguiente objetivo).
