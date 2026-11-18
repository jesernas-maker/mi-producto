---
opportunity: repaso-atrasado-examen-con-fecha
status: chosen
chosen: brainwhisper-tutor-voz
tests:
---

# Soluciones para: El repaso que funciona no cabe en el día

## Qué dice hoy la evidencia
- La creencia de valor de la oportunidad (#9, el repaso activo no cabe en el día) quedó confirmada con 3 entrevistas reales (insights/2026-11-17-1727-repaso-activo-manos-libres.md): las tres intentan repaso activo; a una la frena cuadrar turnos y a otro no tener quién corrija. Un caso en contra (Mateo lo sostiene solo).
- La voz en el trayecto (#3) quedó confirmada para el trayecto, no para el ejercicio ni el paseo (real).
- Lo nuevo: lo que vale no es hablar sino que alguien corrija en el momento (3 de 3, real).
- Siguen abiertas la eficiencia del repaso por voz (#8), el segmento más agudo (#4), el plan automático (#1), y precio y ciclo (#5, #6, #7).

## Línea base: lo que hacen hoy
Una mezcla a medias: repasar con otra persona cuando está disponible (Eliana, Angela, Lucía; real); el modo de voz gratuito de ChatGPT como examinador en el bus (Mateo; real); recitarse solo sin corrección (Lucía; real); escuchar NotebookLM en modo pasivo (Eliana; real); simuladores pagados en pantalla (Tutorials Dojo, Jason Dion; real). Lo más difícil de superar: ChatGPT de voz, gratis y "me alcanza justo para el trayecto".

## Alternativas
### A1. BrainWhisper: plan automático y repaso por voz con corrección (`brainwhisper-tutor-voz`)
Toma el material tal como está, arma el plan y lleva el ritmo según el material y la fecha del examen, pregunta por voz, corrige cada respuesta en el momento ceñido a la fuente y recuerda los errores entre sesiones. El plan viene activo por defecto; si la persona lo pide, repasa sin plan. Para Natalia Cárdenas y Andrés Molina (primary), en el trayecto. Reemplaza el plan propio más ChatGPT de voz, y a la pareja de repaso. Absorbe las ideas parqueadas del sistema que planifica, el compañero pegado al material y el empezar con el material tal como está.

### A3. Parejas de repaso por llamada (`parejas-repaso-llamada`)
Proceso sobre WhatsApp, sin software nuevo: emparejar personas que preparan lo mismo para llamadas de 15 a 20 min en el trayecto, tomándose la lección por turnos. Ataca la dependencia de que alguien esté disponible. Para Valentina Rojas y Natalia Cárdenas (primary). Le da estructura a la pareja de repaso.

### A4. Kit para la IA que ya usan (`kit-ia-voz`)
Lo más pequeño que podría funcionar: un prompt y un proyecto para ChatGPT o Gemini de voz que cargan el material, piden preguntas por dominio, exigen corregir ceñido a la fuente y llevan un registro de errores. Para Natalia Cárdenas y Andrés Molina (primary), en el trayecto. Reemplaza ChatGPT de voz sin guía y recitarse solo.

### A5. Cuestionario en audio con pausa (`cuestionario-audio-pausa`)
Un audio generado del material: pregunta, pausa para responder mentalmente o en voz baja, y la respuesta correcta. No escucha al usuario. Ataca la escucha pasiva en el transporte. Para Andrés Molina y Valentina Rojas (primary). Reformula la idea parqueada de una modalidad de solo escuchar.

## Comparación
| Alternativa | Deseable | Factible | Viable | Creencia más riesgosa |
|---|---|---|---|---|
| A1 | mixed. Sustituto cercano usado: Mateo con ChatGPT de voz 3 veces por semana (real, n=1, insights/2026-11-17-1727). Plan con señales en las dos direcciones: Eliana pide estrategia (real, insights/2026-11-17-1627); Mateo arma el suyo y le funciona (real). Nadie reaccionó a A1 | to check with tech: generar preguntas de material variado, evaluar respuestas habladas sin inventar, ajustar el ritmo; restricción de exactitud del brief | mixed. Pagan 11–45 USD por simuladores y cancelan si no coinciden con la fuente (real, insights/2026-11-17-1727); ya pagan IA general (Eliana, real); a quien ya repasa por voz, ChatGPT gratis le alcanza (Mateo, real) | Quien recibe el repaso con plan, corrección ceñida a su material y memoria de errores lo sostiene en su trayecto durante 3 semanas y lo prefiere a lo que usaba (ChatGPT de voz sin guía, recitarse solo, esperar a una compañera) |
| A3 | mixed. Repasar con otra persona es lo que mejor funciona (real: Eliana, Angela, Lucía), pero con conocidos; lo frena cuadrar horarios (Lucía, real). Con desconocidos, sin probar | mixed (assumption): sin desarrollo; el cuello es que haya suficientes pares con el mismo examen y horario | weak (assumption): difícil cobrar por algo parecido a un grupo de estudio gratuito; no construye producto | Dos personas que preparan lo mismo encuentran un rato de 15 a 20 min en el trayecto 3 o más veces por semana y lo sostienen 3 semanas |
| A4 | mixed, con evidencia real de la solución en las dos direcciones: a Mateo le funciona casi esto (real, insights/2026-11-17-1727); Eliana lo dejó porque "perdía el foco" y se repetía (real, insights/2026-11-17-1627) | to check with tech: si el modo de voz usa el material adjunto; tope de 15–20 min de voz al día en el plan gratuito (Mateo, real) | weak (assumption): gratis, el valor queda en otra herramienta | Con el kit, la IA general mantiene las preguntas dentro del material y no se repite durante 2 semanas de sesiones |
| A5 | mixed: pain evidenced, relief not tested. A favor, recordar en silencio funciona (secondary, g ≈ 0,61, research/2026-10-21-1739); en contra, nadie escucha la respuesta y lo que piden es corrección (3 de 3, real) | to check with tech, con menor exigencia que A1 (no evalúa respuestas habladas) | mixed (assumption): cobrable, pero compite con los audios gratuitos de NotebookLM | Quien lo escucha en el trayecto lo sostiene 2 semanas y siente que cierra sus dudas aunque nadie escuche su respuesta |

## Decisión
La PM elige A1 para probar. El plan automático es la esencia de BrainWhisper, con la opción de repasar sin plan si la persona lo pide. Para validar si vale la pena construirlo sin construirlo, la PM propone probarlo con el kit de A4 sobre la IA de voz que ya usan, con el plan, el ritmo, las correcciones y la memoria de errores administrados a mano (prueba tipo concierge). El diseño de la prueba, la señal y el umbral quedan para /design-solution-tests.

La IA recomendó probar A1 y A4 en paralelo, con A4 como amenaza de A1. La PM elige solo A1 y usa A4 como instrumento de su prueba, por ser lo más barato. Registrado en corrections.md.

## A probar
- A1. "Quien recibe el repaso con plan, corrección ceñida a su material y memoria de errores lo sostiene en su trayecto durante 3 semanas y lo prefiere a lo que usaba" (#10): si no se sostiene ni hecho a mano, no vale la pena automatizarlo. Se miden al lado, como diagnóstico, si sigue el plan que se le arma (#1) y si las preguntas se ciñen al material y no se repiten entre sesiones (#11). Se diseña en /design-solution-tests.

## Propuesta de valor: BrainWhisper
- **Dolor que alivia:** nadie le corrige en el momento cuando repasa hablando, y se queda con la duda (Lucía, Camilo; real); la IA general que pregunta pierde el foco y se repite (Eliana, real); teclear respuestas cansa y hace abandonar (Camilo, Lucía; real); armar el plan y el material le quita el tiempo que no tiene (Eliana, Camilo; real).
- **Ganancia:** repasar en el trayecto con preguntas de su propio material y corrección inmediata, sabiendo qué toca hoy para llegar a la fecha, sin armar tarjetas, plan ni instrucciones.
- **Reemplaza:** ChatGPT de voz sin guía, recitarse solo, esperar a una compañera disponible y el plan propio en Excel. Cambiaría porque no tiene que redactar el prompt, decidir qué repasar ni rehacer a mano las preguntas que falló (Mateo hoy lo hace a mano).
- **No hace, a propósito:** no cubre preguntas de diagrama o cálculo (quedan para la pantalla o fuera de alcance); no promete el ejercicio ni el paseo, solo el trayecto; no obliga a seguir el plan; no apunta a B2B.

## Creencias
Referencias a product/overview.md, el registro único:
- [opportunity: repaso-atrasado-examen-con-fecha] [value] #9
- [product] [value] #1 (la prueba la alimenta)
- [product] [value] #3
- [product] [value] #8
- [feature: brainwhisper-tutor-voz] [value] #10: Quien recibe el repaso con plan, corrección ceñida a su material y memoria de errores lo sostiene en su trayecto durante 3 semanas y lo prefiere a lo que usaba.
- [feature: brainwhisper-tutor-voz] [value] #11: Las preguntas y correcciones se ciñen al material de la persona y no se repiten entre sesiones.
- [feature: brainwhisper-tutor-voz] [feasibility] #12: El sistema genera buenas preguntas desde material variado y evalúa respuestas habladas sin inventar, con la exactitud que pide el dominio.

## Descartadas o parqueadas
- A4. parked como producto: viabilidad débil, el valor queda en otra herramienta. Se usa como instrumento de la prueba de A1.
- A3. parked: viabilidad débil y depende de que haya suficientes pares con el mismo examen y horario. Vuelve si tech dice que no se puede corregir ceñido a la fuente con suficiente exactitud.
- A5. parked: la evidencia dice que sí responden en voz baja en el trayecto (Mateo) y que lo que falta es la corrección, que A5 no da. Vuelve si las pruebas muestran que la mayoría no responde en el trayecto.
- Modelos de cobro (mensual, por ciclo, híbrido). discarded como alternativas: no resuelven el problema; responden a la viabilidad (#5, #6) y se deciden en la preventa.

## Resultado
