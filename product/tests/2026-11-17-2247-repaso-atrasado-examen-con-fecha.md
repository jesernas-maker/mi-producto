---
opportunity: repaso-atrasado-examen-con-fecha
solutions: product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md
status: analyzed
---

# Pruebas de solución para: El repaso que funciona no cabe en el día

## Por qué probar
Se prueba A1, BrainWhisper (`brainwhisper-tutor-voz`): plan automático, repaso por voz con corrección ceñida al material y memoria de errores. El problema tiene evidencia real (el repaso activo no cabe en el día y lo que falta es que alguien corrija en el momento, 3 de 3). La solución casi no: solo Mateo reaccionó a algo parecido (ChatGPT de voz, real, n=1), y el trayecto en transporte público tiene un solo caso real. Antes de construir hay que saber si se pueden generar buenas preguntas, corregir ceñido a la fuente y programar la repetición espaciada (T1 a T3), y si alguien sostiene el repaso así durante 3 semanas (T4).

T1 a T3 se corren juntas, en 1 a 2 días por iteración, con el material de los dos participantes de T4, y se leen por separado. El bloque se puede iterar hasta 3 veces antes de T4. Si no llega, T4 se corre con una persona corrigiendo detrás (wizard-of-oz) en lugar del kit.

## T1. brainwhisper-tutor-voz: generación de preguntas
- **Estado de la prueba:** analyzed
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
- **Estado de la prueba:** analyzed
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
- **Estado de la prueba:** analyzed
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
- **Estado de la prueba:** analyzed
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

Fuente: las hojas de captura en `product/solution tests/repaso examen atrasado.docx`.

### T1. Generación de preguntas: inconclusive
- **Lo que se observó:** el kit generó 20 preguntas, 10 por material (Security+ de Mateo y la certificación de IA de Eliana). Se revisaron el 2026-11-18, en una sola iteración.
  - **Security+:** 9/10 tienen una sola respuesta en la fuente (la de hashing admite dos interpretaciones y se consultó a una persona externa). 10/10 importan para el examen. 9/10 se responden en una frase (la de cumplimiento pide una explicación larga). Los dominios quedan cubiertos.
  - **IA:** 10/10 tienen una sola respuesta en la fuente. 9/10 importan para el examen (la de trazabilidad parece un detalle menor). 10/10 se responden en una frase. Los dominios quedan cubiertos.
  - En dos comprobaciones iniciales no se registró la cita de la fuente; se completó después.
- **Con quién y cuántos:** la PM; 20 de las 80 preguntas diseñadas (40 por material).
- **Procedencia:** real
- **Resultado:** inconclusive. Los cuatro umbrales se cumplen, pero tres quedan justo en el 90 % con 10 preguntas por material, así que una falla más los rompe. Se corrió la cuarta parte de lo diseñado, y con 10 preguntas no se puede afirmar que todos los dominios del material quedan cubiertos.
- **Decisión:** correr T1 como se diseñó, con 40 preguntas por material y la cita de la fuente registrada desde el principio.

### T2. Corrección: inconclusive
- **Lo que se observó:** 3 sesiones simuladas por material el 2026-11-18, con 20 respuestas, todas con un error plantado.
  - 19/20 correcciones se ciñen a la fuente. Una corrección sobre un dato exacto agregó contexto que no está en la fuente.
  - 18/20 errores se detectaron. Un error de concepto se corrigió a medias, y un error de lectura del enunciado no se detectó.
  - 2/20 preguntas se repitieron sin haberse fallado antes.
  - El kit usó el material adjunto en todas las sesiones.
  - Cada respuesta tomó entre 3 y 5 minutos.
  - Dos transcripciones tuvieron ruido y hubo que escuchar el audio.
- **Con quién y cuántos:** la PM; 20 respuestas.
- **Procedencia:** real
- **Resultado:** inconclusive. Tres condiciones se cumplen justo en el límite. La cuarta (que una sesión quepa en el tope de minutos de voz del plan de cada participante) no se puede juzgar, porque la hoja no registra ni el tope ni los minutos por sesión. Además, no se plantaron respuestas buenas, aunque el diseño pedía mitad y mitad, así que no se sabe si el kit marca como mala una respuesta correcta.
- **Decisión:** correr T2 de nuevo como se diseñó: mitad de respuestas buenas y mitad malas, registrando los minutos por sesión y el tope de minutos del plan de cada participante. Si vuelven a fallar la detección de errores de lectura del enunciado y la corrección que agrega contexto ajeno, ajustar el kit en esos dos puntos.

### T3. Repetición espaciada: inconclusive
- **Lo que se observó:** el 2026-11-19 se corrieron 16 de 20 casos. Los otros 4 no corrieron por un error en la hoja intermedia de estados, y algunos estados se reconstruyeron a partir de registros anteriores.
  - En 15/16 casos el estado del kit coincide con el de la PM. En el que no coincide, la PM dio la pregunta por fallada y el kit por dudosa.
  - En los 16 casos la pregunta aparece en la sesión que le toca, la carga cabe en el trayecto y el material pasa antes del examen.
  - La simulación cubrió las 3 semanas, pero falta el detalle de horarios de dos simulaciones.
- **Con quién y cuántos:** la PM; 16 de 20 casos.
- **Procedencia:** real
- **Resultado:** inconclusive. El umbral pide que el 100 % de las preguntas aparezca en su sesión, y 4 casos no se comprobaron. Con estados reconstruidos y horarios faltantes, tampoco queda verificada del todo la carga diaria.
- **Decisión:** correr de nuevo los 20 casos con la hoja de estados corregida, después del nuevo T2, porque usa sus sesiones. Revisar por qué el kit clasifica como dudosa una respuesta fallada.

### T4. Concierge de 3 semanas: passed (decisión hipotética sobre un ensayo synthetic)
- **Lo que se observó:** las participantes fueron dos personas sintéticas ("Eliana Rivas" y "Mateo Serrano"), no Eliana y Mateo del segmento. El ensayo fue del 2026-11-02 al 2026-11-27.
  - **Eliana:** 3, 3 y 2 sesiones por semana; "7 de 9" en el trayecto; acepta seguir y hace una sesión la semana siguiente. Una sesión se cortó por mala conexión. Cita: "Cuando voy sentada lo hago, cuando el trayecto sale raro lo dejo."
  - **Mateo:** 4, 3 y 3 sesiones por semana; "8 de 10" en el trayecto; acepta seguir y hace una sesión la semana siguiente. Pidió una sesión libre fuera del plan. Cita: "Me sirve más que improvisar preguntas, aunque algunas vuelven demasiado pronto."
- **Con quién y cuántos:** 2 personas sintéticas.
- **Procedencia:** synthetic
- **Resultado:** passed por decisión de la PM, para un ejercicio hipotético. Por la regla escrita quedaba en zona gris: Mateo cumple las tres condiciones, y Eliana no cumple la 1 (2 sesiones en la semana 3) ni la 2 (7 de 9, un 78 %). No es evidencia sobre el segmento, y la creencia #10 no se anota en `overview.md`. Queda registrado en `corrections.md` (2026-11-25).
- **Decisión:** continue, ready for spec, como ejercicio. La corrida real con Eliana y Mateo sigue pendiente, con estos ajustes a la hoja de captura:
  - **Condición 2:** "7 de 9" no aclara si son sesiones hechas en el trayecto o repasos en el trayecto que pasaron a la prueba. Hay que registrar, por cada repaso en el trayecto, qué usó la persona: la prueba, ChatGPT de voz sin guía, recitarse sola o esperar a una compañera.
  - **Parada temprana:** la auditoría semanal se hizo, pero su resultado no está, y tampoco el control al cerrar la semana 1 (sesiones y porcentaje de correcciones ceñidas). Hace falta un registro de ese control.
  - **Condiciones de entrada:** no quedaron confirmadas (trayecto de 30 minutos o más y examen al menos 4 semanas después del inicio).
  - **Causa del abandono:** las sesiones cortadas por conexión o audio y las sesiones de tema libre necesitan una columna propia. Así se separa una causa del producto de una causa de la vida de la persona, que es lo que distingue en la regla un resultado `change` de uno `inconclusive`.
  - **Orden de las pruebas:** el ensayo empezó antes de que T1 a T3 validaran el kit. La corrida real va después de ellas.
  - **Intervalos de repaso:** Mateo dice que "algunas vuelven demasiado pronto". Conviene revisar los intervalos de la regla de T3 antes de la corrida real.

## Decisión

BrainWhisper (`brainwhisper-tutor-voz`) sigue a la spec **como ejercicio hipotético**. T4 se da por aprobada por decisión de la PM sobre un ensayo synthetic; por la regla escrita era zona gris y no es evidencia sobre el segmento. T1 a T3 son reales pero quedan inconclusive: sus umbrales se cumplen en el límite o no se pudieron comprobar, porque se corrieron con menos casos de los diseñados. La spec las hereda como riesgos de factibilidad pendientes (#12 y #13) y como riesgo de valor (#11). Antes de construir de verdad hay que correr T1 a T3 como se diseñaron, y luego la corrida real de T4.
