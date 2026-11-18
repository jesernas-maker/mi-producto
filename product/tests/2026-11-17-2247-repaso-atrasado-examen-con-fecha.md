---
opportunity: repaso-atrasado-examen-con-fecha
solutions: product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md
status: designed
---

# Pruebas de solución para: El repaso que funciona no cabe en el día

## Por qué probar
Se prueba A1, BrainWhisper (`brainwhisper-tutor-voz`): plan automático, repaso por voz con corrección ceñida al material y memoria de errores. El problema tiene evidencia real (el repaso activo no cabe en el día y lo que falta es que alguien corrija en el momento, 3 de 3). La solución casi no: solo Mateo reaccionó a algo parecido (ChatGPT de voz, real, n=1), y el trayecto en transporte público tiene un solo caso real. Antes de construir hay que saber si se pueden generar buenas preguntas, corregir ceñido a la fuente y programar la repetición espaciada (T1 a T3), y si alguien sostiene el repaso así durante 3 semanas (T4).

T1 a T3 se corren juntas, en 1 a 2 días por iteración, con el material de los dos participantes de T4, y se leen por separado. El bloque se puede iterar hasta 3 veces antes de T4. Si no llega, T4 se corre con una persona corrigiendo detrás (wizard-of-oz) en lugar del kit.

## T1. brainwhisper-tutor-voz: generación de preguntas
- **Estado de la prueba:** designed
- **Creencia que se prueba:** #12, la parte de generar preguntas: "El sistema genera buenas preguntas desde material variado y evalúa respuestas habladas sin inventar, con la exactitud que pide el dominio (KPI System Accuracy Rate). Si tech no llega a esa exactitud, la creencia cae."
- **Riesgo:** [feasibility]
- **Tipo de prueba:** technical-test
- **Qué se hace:** el kit lee el material de cada participante (Security+ de Mateo; la certificación de Eliana) y genera 40 preguntas por material, repartidas por dominio. La PM verifica cada una contra la fuente. Las que no pueda juzgar se marcan y se consultan con alguien del área que no participe en T4.
- **Con quién:** la PM; sin participantes.
- **Material necesario:** el kit (instrucciones para generar preguntas desde el material adjunto, por dominio, que se respondan en una frase); los 2 materiales; una hoja de captura por pregunta: dominio, si tiene una sola respuesta correcta en la fuente (con la cita), si importa para el examen, si se responde en una frase sin diagrama. Fuera, a propósito: corrección, programación, voz.
- **Material:**
- **Duración:** 1 día por iteración.
- **Señal y umbral:** por material, el 90 % o más de las preguntas tiene una sola respuesta correcta que está en la fuente; el 90 % o más importa para el examen (no es trivia); todos los dominios del material quedan cubiertos; el 80 % o más se responde en una frase.
- **Regla de decisión:** continue si se cumplen los cuatro en los 2 materiales: pasa a T2 · change si falla alguno: se ajusta el kit y se repite el bloque (máximo 3 iteraciones) · discard del instrumento si no llega tras 3 iteraciones: T4 se corre con las preguntas revisadas a mano, y el resultado va a tech como evidencia sobre la #12.
- **Procedencia esperada:** real (métrica técnica sobre el kit)
- **Siguiente paso si pasa:** T2.

## T2. brainwhisper-tutor-voz: corrección
- **Estado de la prueba:** designed
- **Creencia que se prueba:** #11: "Las preguntas y correcciones se ciñen al material de la persona y no se repiten entre sesiones. Si los participantes reportan preguntas fuera del material o repetidas en buena parte de las sesiones, la creencia cae."
- **Riesgo:** [value]
- **Tipo de prueba:** technical-test
- **Qué se hace:** con las preguntas de T1, la PM hace 3 sesiones por voz en la IA de voz que usará cada participante, haciendo de participante. Responde bien la mitad y mal la otra mitad, a propósito, con los tipos de error definidos (concepto, confusión entre dos términos, lectura del enunciado, dato exacto). Cada corrección se revisa contra la fuente.
- **Con quién:** la PM; sin participantes.
- **Material necesario:** el kit; las respuestas planificadas (cuál va mal y con qué tipo de error); la grabación o transcripción de cada sesión; una hoja de captura por pregunta: respuesta dada, error plantado, veredicto del kit, si la corrección se ciñe a la fuente vigente y local, si detectó el error, si la pregunta se repitió, minutos usados, si usó el material adjunto. Fuera, a propósito: plan y programación.
- **Material:**
- **Duración:** 1 día por iteración, el mismo bloque que T1.
- **Señal y umbral:** el 90 % o más de las correcciones se ciñen a la fuente vigente y local; el 90 % o más de las respuestas malas se detectan; a lo sumo el 10 % de las preguntas se repiten entre las 3 sesiones (sin contar las que vuelven a propósito por haberse fallado); el kit usa el material adjunto y una sesión cabe en el tope de minutos de voz del plan que usa cada participante.
- **Regla de decisión:** continue si se cumplen los cuatro: pasa a T3 · change si falla alguno: se ajusta el kit y se repite el bloque (máximo 3 iteraciones) · discard del instrumento si no llega tras 3 iteraciones: T4 se corre con la PM corrigiendo detrás (wizard-of-oz).
- **Procedencia esperada:** real (métrica técnica sobre el kit); no mueve la #10.
- **Siguiente paso si pasa:** T3.

## T3. brainwhisper-tutor-voz: repetición espaciada
- **Estado de la prueba:** designed
- **Creencia que se prueba:** #13: "Con el estado que deja cada respuesta hablada, la regla de repetición espaciada programa cada pregunta para la sesión que le toca, ajustada a la fecha del examen, con una carga diaria que cabe en un trayecto. Si el estado asignado no coincide con el juicio humano, o la carga no cabe en el trayecto, la creencia cae."
- **Riesgo:** [feasibility]
- **Tipo de prueba:** technical-test
- **Qué se hace:** con las sesiones de T2, se compara el estado que el kit deja a cada pregunta (nueva, fallada, dudosa, acertada, dominada) con el que asigna la PM. Luego se aplica la regla a mano y se simulan 3 semanas con la fecha de examen y la duración del trayecto de cada participante, para ver qué preguntaría cada día.
- **Con quién:** la PM; sin participantes.
- **Material necesario:** la regla escrita (estados; cuándo vuelve cada pregunta según su estado; cómo se comprime cuando se acerca el examen; tope de preguntas por sesión según la duración del trayecto); una hoja de estados por pregunta; la simulación de 3 semanas por participante. Fuera, a propósito: medir si se recuerda más (es la #8, no se mide aquí).
- **Material:**
- **Duración:** medio día por iteración, después de T2.
- **Señal y umbral:** el estado del kit coincide con el de la PM en el 90 % o más de las respuestas; en la simulación, el 100 % de las preguntas aparece en la sesión que le toca; ningún día supera la carga que cabe en el trayecto del participante; todo el material pasa al menos una vez antes de la fecha del examen.
- **Regla de decisión:** continue si se cumplen los cuatro: pasa a T4 · change si falla la coincidencia de estados (se ajusta cómo el kit clasifica) o la carga (se ajusta la regla), y se repite el bloque (máximo 3 iteraciones) · discard del instrumento si los estados no coinciden tras 3 iteraciones: en T4 la PM asigna los estados escuchando la grabación.
- **Procedencia esperada:** real (métrica técnica)
- **Siguiente paso si pasa:** T4.

## T4. brainwhisper-tutor-voz: concierge de 3 semanas
- **Estado de la prueba:** designed
- **Creencia que se prueba:** #10: "Quien recibe el repaso con plan, corrección ceñida a su material y memoria de errores lo sostiene en su trayecto durante 3 semanas y lo prefiere a lo que usaba (ChatGPT de voz sin guía, recitarse solo, esperar a una compañera). Se sostiene si la mayoría hace 3 sesiones o más por semana durante las 3 semanas, pasa a la prueba el 80 % o más de su repaso en el trayecto y al final acepta seguir hasta su examen y hace al menos una sesión la semana siguiente. Si la mayoría lo deja antes de la tercera semana, o vuelve a lo que usaba, la creencia cae."
- **Riesgo:** [value]
- **Tipo de prueba:** concierge
- **Qué se hace:**
  - Cada participante recibe el kit en la IA de voz que ya usa y un plan inicial hasta su examen, armado por la PM según su material y su fecha.
  - Repasa por voz en su trayecto en transporte público.
  - Después de cada sesión, la PM actualiza la hoja de estados con la regla de T3 y le deja lista la sesión siguiente: las preguntas que tocan según su estado y los temas del plan.
  - La persona puede pedir repasar sin plan; se registra cuándo lo hace.
- **Con quién:** 2 personas reales del segmento: Eliana (certificación en IA, producto y datos) y Mateo (CompTIA Security+, examen en enero). Condiciones de entrada, a confirmar antes de empezar: trayecto diario en transporte público de 30 minutos o más (manejando no cuenta) y examen al menos 4 semanas después del inicio. Si Eliana no tiene trayecto, no entra a T4. Con 2 personas, "la mayoría" son las dos. Elegidas por la PM; la decisión de construir quedará apoyada en estos 2 casos, y el plan de exposición de la spec es el que amplía a más usuarios.
- **Material necesario:** el kit validado en T1 a T3; un plan inicial por participante; la hoja de estados por pregunta con la regla de T3; un registro por sesión (duración del trayecto y minutos usados, preguntas hechas y falladas, si alguna corrección se salió del material, si la sesión se cortó y por qué, si siguió el plan o eligió el tema); la clasificación de errores con su seguimiento a la sesión siguiente; una auditoría semanal de correcciones contra la fuente; la pregunta de abandono ("la última vez que no repasaste, ¿qué hiciste en su lugar?"); y la oferta final de seguir hasta su examen. Fuera, a propósito: app, sincronización de Drive o Notion, automatización, cobro y preguntas de diagrama o cálculo.
- **Material:**
- **Duración:** 3 semanas, más la semana siguiente para ver si continúa.
- **Señal y umbral:** se sostiene si **las dos personas** cumplen las tres:
  1. 3 sesiones o más por semana durante las 3 semanas;
  2. el 80 % o más de sus sesiones de repaso en el trayecto pasan a la prueba (y no a ChatGPT de voz sin guía, recitarse solo o esperar a una compañera);
  3. al final acepta seguir hasta su examen y hace al menos una sesión la semana siguiente.

  Cae si las dos lo dejan antes de la tercera semana o vuelven a lo que usaban. Entre ambos, zona gris.
  - **Parada temprana, al cerrar la semana 1:** se para si las dos hicieron menos de 2 sesiones, o si en la auditoría menos del 90 % de las correcciones se ciñen a la fuente vigente y local del participante.
  - **Causa de abandono:** a quien deje de repasar dos sesiones seguidas se le hace la pregunta de abandono.
  - **Diagnóstico, no decide:** si sigue el plan (#1); si las preguntas se ciñen al material y no se repiten (#11); si los errores fallados vuelven a fallar en la sesión siguiente (señal parcial de la #8 y de la memoria de errores).
- **Regla de decisión:**
  - continue si las dos cumplen las tres condiciones: BrainWhisper pasa a la spec;
  - change si está en zona gris o una lo deja por una causa del producto (plan, correcciones, carga diaria): se ajusta esa parte y se repite T4 con la versión cambiada;
  - discard si las dos lo dejan o vuelven a lo que usaban por causas del producto: la #10 queda weakened y se vuelve a /explore-solutions con las alternativas parqueadas.

  Si el abandono viene de la vida de la persona y no del producto, el resultado es inconclusive.
- **Procedencia esperada:** real
- **Siguiente paso si pasa:** ready for spec (/write-spec), con un primer nivel del plan de exposición que amplíe a más usuarios.

## Resultados

## Decisión
