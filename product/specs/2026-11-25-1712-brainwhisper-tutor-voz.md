# BrainWhisper: repaso por voz con corrección en el trayecto

## Problema
Quien prepara un examen con fecha sabe que lo que mejor le funciona es que alguien le pregunte y le corrija, pero eso depende de que haya una compañera disponible, y casi nunca la hay. Cuando repasa hablando sola, se queda con la duda porque nadie le confirma si respondió bien. Cuando lo intenta con una IA general, la IA pierde el foco, se repite de un día a otro o se sale del material. El tiempo que sí tiene, el trayecto en transporte público, se le va escuchando o descansando. El examen no se mueve y el repaso se atrasa.

> Evidencia: "del cuarto no me acordaba si era menos tres o menos cuatro, y como iba manejando no podía mirar el celular para confirmar [...] me quedé con la duda todo el día" — Lucía (real), insights/2026-11-17-1727-repaso-activo-manos-libres.md
> Evidencia: "ni yo quedé seguro de si lo dije bien porque no tenía cómo corregirme" — Camilo (real), insights/2026-11-17-1727-repaso-activo-manos-libres.md
> Evidencia: "decidí hacer ejercicios simulados con IA pero igual se perdía el foco rápidamente o se volvía repetitivo a través de los días así que sentí que perdía el tiempo" — Eliana (real), insights/2026-11-17-1627-entrevistas-repaso-atrasado-examen.md
> Evidencia: "le iba respondiendo cortico, tipo 'la B' o 'AES porque es más rápido', y él me decía si estaba bien o por qué estaba mal. Hice como quince preguntas en veinte minutos" — Mateo (real), insights/2026-11-17-1727-repaso-activo-manos-libres.md

## Para quién
- **Natalia Cárdenas** (primary): este recorrido se escribe desde ella. Trabaja jornada completa, prepara una certificación o un posgrado con fecha, se mueve en transporte público y ya repasa hablando en el trayecto. Sale de entrevistas reales y coincide con el segmento que se probó.
- **Andrés Molina** (primary, persona de diseño): mismo tipo de examen y 1 h 20 min diarios de transporte público, pero hoy usa el trayecto para escuchar podcasts. Adopta una herramienta si le ahorra tiempo desde el primer uso y la deja si le pide configurar algo. Que empiece a repasar en el trayecto en lugar de escuchar es la creencia #3, todavía abierta.
- **Condiciones del segmento**, las mismas de la prueba: trayecto diario en transporte público de 30 minutos o más (manejando no) y examen al menos 4 semanas después de empezar.

## Recorrido de uso
1. **Detonante:** se acerca la fecha del examen, va atrasada y la compañera con la que repasaba no está disponible (Lucía: no cuadran los turnos). O ya probó repasar con una IA general y la dejó porque se salía del material o se repetía (Eliana).
2. **Sube su material:** los PDF o documentos de su certificación, tal como los tiene, más la fecha del examen y lo que dura su trayecto. No crea tarjetas ni escribe preguntas: preparar el material es lo que la hizo abandonar Anki y Quizlet (Camilo, Lucía).
3. **Recibe un plan hasta el examen**, organizado por los dominios de su material. Hoy hay quien arma ese plan a mano en un Excel (Mateo).
4. **Empieza la sesión del día en el trayecto**, en el TransMilenio y con audífonos. BrainWhisper le hace las preguntas que le tocan hoy, todas de las que se responden en una frase.
5. **Responde corto y en voz baja**, sin mirar el celular: "la B", "AES porque es más rápido" (Mateo).
6. **Recibe la corrección en el momento** *(aquí está el valor)*: si respondió bien o mal, por qué, y de qué parte de su material sale la respuesta. No se queda con la duda.
7. **Llega a su parada o se cae la conexión:** la sesión queda guardada donde iba.
8. **Cada pregunta vuelve cuando le toca:** las que falló, pronto, sin que tenga que rehacerlas a mano como hace hoy Mateo; las que ya domina, cada vez más espaciadas, para comprobar que no se le olvidaron.
9. **Resultado:** llega a la fecha del examen habiendo repasado todo su material al menos una vez, en un rato que antes no usaba, y sin depender de que alguien esté disponible.

## Historias de usuario críticas

### Empezar con el material tal como está
Como Natalia, quiero subir el material de mi certificación sin prepararlo, para empezar a repasar el mismo día sin hacer tarjetas ni escribir preguntas.

Criterios de aceptación:
- [ ] Natalia puede subir uno o varios PDF o documentos de texto y escribir la fecha del examen y la duración de su trayecto, sin crear ninguna pregunta ni tarjeta.
- [ ] Al terminar de subir, ve los dominios o temas que BrainWhisper encontró en su material y puede empezar la primera sesión.
- [ ] Si un archivo no tiene texto que se pueda leer (por ejemplo, un PDF escaneado), BrainWhisper le dice cuál es y sigue con los demás.
- [ ] Si la fecha del examen queda a menos de 4 semanas, BrainWhisper se lo dice y arma un plan que cubre todo el material al menos una vez antes de esa fecha.

Se apoya en: insights/2026-11-17-1727-repaso-activo-manos-libres.md (5: se abandona lo que pide transcribir); insights/2026-11-17-1627-entrevistas-repaso-atrasado-examen.md (preparar el material le tomó mucho tiempo a Eliana)

### Repasar por voz en el trayecto
Como Natalia, quiero repasar respondiendo en voz baja durante mi trayecto en bus, para usar un rato que ya tengo sin sacar el celular ni el cuaderno.

Criterios de aceptación:
- [ ] Natalia inicia la sesión del día con un solo toque y desde ahí la sesión avanza por voz, sin tocar la pantalla.
- [ ] Todas las preguntas de la sesión se responden en una frase. Las de diagrama o cálculo no aparecen en voz.
- [ ] La cantidad de preguntas de la sesión cabe en la duración de trayecto que Natalia registró.
- [ ] Si BrainWhisper no entiende una respuesta dicha en voz baja, le pide que la repita una vez antes de marcarla como fallada.
- [ ] Si la sesión se corta (por conexión o porque Natalia la cierra), al volver sigue desde la pregunta donde iba.

Se apoya en: insights/2026-11-17-1727-repaso-activo-manos-libres.md (2: el trayecto en transporte público; 4: lo que cabe en voz)

### Corrección en el momento, ceñida a su material
Como Natalia, quiero saber de inmediato si mi respuesta está bien y por qué, según mi propio material, para no quedarme con la duda ni aprender algo que no coincide con lo que me van a evaluar.

Criterios de aceptación:
- [ ] Después de cada respuesta, BrainWhisper le dice si está bien, mal o incompleta antes de pasar a la siguiente pregunta.
- [ ] Cuando la respuesta está mal o incompleta, le dice cuál es la correcta y por qué, usando solo lo que está en su material.
- [ ] Natalia puede pedir por voz de qué parte de su material sale la respuesta, y BrainWhisper le dice el documento y la sección.
- [ ] Si la respuesta de Natalia es correcta pero dicha con otras palabras, BrainWhisper la marca como correcta.
- [ ] Si Natalia pregunta algo que no está en su material, BrainWhisper le dice que no está en su material en lugar de responder con información de otra fuente.

Se apoya en: insights/2026-11-17-1727-repaso-activo-manos-libres.md (1: lo que falta es alguien que corrija en el momento; 5: se cancela lo que no coincide con la fuente)

### Cada pregunta vuelve cuando le toca
Como Natalia, quiero que BrainWhisper recuerde cómo he respondido cada pregunta y me la vuelva a hacer cuando toca, para reforzar lo que fallo sin rehacerlo a mano y comprobar que lo que ya sé no se me olvida.

Criterios de aceptación:
- [ ] Cada pregunta respondida queda con un estado (nueva, fallada, dudosa, acertada o dominada) y con su historial de respuestas.
- [ ] Cuándo vuelve cada pregunta lo decide la regla de repetición espaciada a partir de ese historial: cuantas más veces seguidas la acierta, más se espacia.
- [ ] Una pregunta dominada sigue volviendo, con una frecuencia mucho más baja.
- [ ] Si Natalia falla una pregunta que había acertado o dominado, la pregunta vuelve a aparecer con más frecuencia.
- [ ] A medida que se acerca la fecha del examen, los intervalos se acortan, sin que ninguna sesión supere la carga que cabe en su trayecto.
- [ ] Al final de cada sesión, Natalia escucha cuántas falló.

Los intervalos exactos son parte del modelo de repetición espaciada, no de esta spec.

Se apoya en: insights/2026-11-17-1727-repaso-activo-manos-libres.md (3: Mateo rehace a mano las diez que falló); insights/2026-11-17-1627-entrevistas-repaso-atrasado-examen.md (la IA general se repite de un día a otro)

### Repasar sin plan cuando lo pido
Como Natalia, quiero pedir por voz un tema distinto al que toca, para repasar lo que me preocupa hoy sin perder el plan hasta el examen.

Criterios de aceptación:
- [ ] Natalia puede pedir por voz un dominio o tema de su material, y la sesión cambia a ese tema.
- [ ] Las respuestas de una sesión libre actualizan el estado de las preguntas igual que una sesión del plan.
- [ ] Después de una sesión libre, la siguiente sesión del plan sigue cubriendo lo que quedó pendiente.
- [ ] Si el tema que pide no está en su material, BrainWhisper se lo dice y le ofrece los temas que sí están.

Se apoya en: product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md (propuesta de valor: el plan no es obligatorio); creencia #1

## Hipótesis
Creemos que quienes preparan una certificación o un posgrado con fecha y tienen un trayecto diario en transporte público de 30 minutos o más harán 3 o más sesiones de repaso por voz por semana en su trayecto, durante al menos 3 semanas, y seguirán hasta su examen, porque cada respuesta recibe una corrección inmediata ceñida a su propio material y el plan les dice qué toca hoy sin que tengan que armarlo.

Estamos equivocados si la mayoría hace menos de 3 sesiones por semana antes de la tercera semana, si más del 20 % de sus repasos en el trayecto vuelven a ChatGPT de voz sin guía, a recitarse solos o a esperar a una compañera, o si la mayoría no hace ninguna sesión la semana siguiente a la tercera.

## Alternativas consideradas
Exploradas en: product/solutions/2026-11-17-2159-repaso-atrasado-examen-con-fecha.md
- A3. Parejas de repaso por llamada — parked: la viabilidad no tiene señal y depende de que haya suficientes pares con el mismo examen y horario.
- A4. Kit para la IA que ya usan — parked como producto: la viabilidad no tiene señal y el valor quedaría en otra herramienta. Se usó como instrumento de las pruebas de A1.
- A5. Cuestionario en audio con pausa — parked: no corrige la respuesta, que es lo que falta.
- Modelos de cobro (mensual, por ciclo, híbrido) — discarded como alternativas: responden a la viabilidad (#5, #6) y se deciden en la preventa.

## Probado antes de la spec
Probado en: product/tests/2026-11-17-2247-repaso-atrasado-examen-con-fecha.md
- T1 Generación de preguntas — inconclusive (real, 20 de las 80 preguntas diseñadas) · #12
- T2 Corrección — inconclusive (real, 20 respuestas; no se midió el tope de minutos ni qué hace el kit con respuestas buenas) · #11
- T3 Repetición espaciada — inconclusive (real, 16 de 20 casos) · #13
- T4 Concierge de 3 semanas — passed por decisión de la PM, para un ejercicio hipotético, sobre un ensayo synthetic (n=2). Por su regla quedaba en zona gris; no es evidencia sobre el segmento (corrections.md, 2026-11-25) · #10

Esta spec mantiene lo que se probó: el plan activo por defecto con opción de repasar sin plan, las preguntas por voz que se responden en una frase, la corrección ceñida a la fuente y la memoria de errores con la regla de repetición espaciada. También mantiene el segmento (trayecto en transporte público de 30 minutos o más, examen al menos 4 semanas después) y el material subido como archivos. Lo que en la prueba hacía la PM a mano (actualizar estados y preparar la sesión siguiente) aquí lo hace el sistema; eso es lo que la prueba concierge reemplazaba, no un cambio.

## Supuestos
Referencias a product/overview.md, el registro único:
- [feature: brainwhisper-tutor-voz] [value] #10: sostienen el repaso en su trayecto durante 3 semanas y lo prefieren a lo que usaban. Sin evidencia real: T4 fue un ensayo synthetic.
- [feature: brainwhisper-tutor-voz] [value] #11: las preguntas y correcciones se ciñen al material y no se repiten entre sesiones fuera de lo que programa la regla de repetición espaciada. T2 quedó inconclusive.
- [feature: brainwhisper-tutor-voz] [feasibility] #12: se generan buenas preguntas desde material variado y se evalúan respuestas habladas sin inventar. T1 quedó inconclusive.
- [feature: brainwhisper-tutor-voz] [feasibility] #13: la regla de repetición espaciada programa cada pregunta para su sesión, con una carga que cabe en el trayecto. T3 quedó inconclusive.
- [feature: brainwhisper-tutor-voz] [usability] #14: la persona sube su material de estudio tal como lo tiene y en su primera sesión ya responde preguntas, sin tener que reorganizarlo antes.
- [feature: brainwhisper-tutor-voz] [feasibility] #15: el sistema entiende respuestas cortas dichas en voz baja dentro de un transporte público lleno, sin pedir que se repitan en la mayoría de las preguntas.
- [product] [value] #3: tienen un trayecto en transporte público y lo usan para repasar de forma activa (para Andrés, en lugar de escuchar podcasts).
- [product] [value] #8: repasar respondiendo por voz rinde más por hora que releer o escuchar.
- [product] [value] #1: prefieren un plan que el sistema arma y ajusta solo.
- [opportunity: repaso-atrasado-examen-con-fecha] [value] #9: el repaso activo no cabe en el día.
- [product] [viability] #5 y [opportunity: repaso-atrasado-examen-con-fecha] [viability] #6: precio y ciclo de pago, que se deciden en la preventa.
