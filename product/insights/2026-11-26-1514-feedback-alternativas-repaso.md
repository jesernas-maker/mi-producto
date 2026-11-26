---
source: real
corpus: product/data/2026-11-26-feedback-alternativas-repaso.csv
metrics-analysis: none
period: 2019-09-14 to 2026-11-24
---

# Análisis de feedback: las alternativas que hoy usa el segmento para repasar

## Corpus
- **40 reseñas de Google Play Colombia:** 20 de ChatGPT, 10 de Quizlet y 10 de NotebookLM. Las de ChatGPT y NotebookLM son de septiembre a noviembre de 2026. Las de Quizlet van de 2019 a 2025, y varias pueden hablar de versiones viejas de la app.
- **Fuera de alcance:** 0. El corpus ya venía filtrado por estudio y repaso.
- **Sesgos:**
  - Las reseñas de tienda sobrerrepresentan a quien está muy contento o muy molesto.
  - Las reseñas fueron elegidas a mano entre unas 550 por app, así que los conteos dicen qué aparece en esta selección, no cuánto pesa cada tema entre los usuarios.
  - No se sabe si quien escribe es del segmento: hay estudiantes de colegio, gente que aprende idiomas y estudiantes de derecho.
  - ChatGPT es la mitad del corpus, así que los temas se inclinan hacia ChatGPT.
  - Quien deja de usar una app en silencio no aparece en ninguna reseña.
- **Qué evidencia es:** es evidencia sobre el problema y sobre las alternativas, no sobre BrainWhisper.
- **Tendencia:** `n/a` en todos los temas. La selección es a mano y la ventana reciente es de solo dos meses.
- **Conteo:** una reseña puede caer en más de un tema, así que los porcentajes no suman 100. El conteo está en el script con el mismo nombre (`.sh`).

## Temas

### F1. Los límites de uso cortan el estudio a mitad de camino
- **Reseñas:** 8 (20 %) · **Fuentes:** ChatGPT (7), Quizlet (1) · **Calificación media:** 2,9
- **Parte de la experiencia:** tope de mensajes, de contexto o de minutos de voz, y no saber cuánto queda.
- **Tipo:** complaint (con 2 request: ver cuánto queda)
- **Severidad:** alta. Es el tema más frecuente y corta la sesión de estudio en el momento.
- **Tendencia:** n/a
- > "es demasiado molesto que después de 15-20 mensajes, tienes que volver a abrir un chat porque se bloquea y no puedes continuar a menos que tengas plan pro o premium" (F03)
- > "No puedo saber cuántos minutos de voz me quedan ni controlar el consumo de imágenes y archivos." (F19)

### F2. La voz no entiende lo que se le dice
- **Reseñas:** 6 (15 %) · **Fuentes:** ChatGPT (6) · **Calificación media:** 2,5
- **Parte de la experiencia:** reconocimiento de voz y dictado: transcribe otra cosa, cambia de idioma o responde algo sin relación.
- **Tipo:** bug
- **Severidad:** alta. Si no entiende la respuesta, no hay repaso por voz.
- **Tendencia:** n/a
- > "cada vez que leo lo que quiero poner me transcribe cualquier cosa y no solo eso, me pone palabras completamente contrarias a las que yo digo" (F15)
- > "realizo preguntas mediante el modo de voz y recibo respuestas que no tienen relación con lo que realmente pregunto" (F16)

### F3. Repasar escuchando, en movimiento y sin tocar el celular
- **Reseñas:** 6 (15 %) · **Fuentes:** Quizlet (3), NotebookLM (3) · **Calificación media:** 4,0
- **Parte de la experiencia:** reproducción seguida, que no se detenga en la calle, que funcione sin señal y no tener que agarrar el celular.
- **Tipo:** request (5), bug (1)
- **Severidad:** media. Lo piden quienes ya usan la app y les gusta, pero el corte en la calle bloquea.
- **Tendencia:** n/a
- > "uno va por la calle escuchando un podcast y de golpe se detiene sin la posibilidad de continuar" (F34)
- > "solo le falta la opción de descarga, para los audios. Así lo podría escuchar cuando no tenga señal." (F40)

### F4. Lo útil es de pago
- **Reseñas:** 5 (12,5 %) · **Fuentes:** Quizlet (3), ChatGPT (2) · **Calificación media:** 2,6
- **Parte de la experiencia:** las funciones de estudio quedan detrás del plan pago.
- **Tipo:** complaint
- **Severidad:** media. Hace desinstalar a quien no puede pagar.
- **Tendencia:** n/a
- > "No está en mis posibilidades pagar su versión premium así que la desinstalo y me descargaré Knowt" (F23)
- > "hay gente que no puede pagar eso, yo x ejemplo, y lo necesito para estudiar." (F13)

### F5. Cuestionarios generados del material, con corrección
- **Reseñas:** 5 (12,5 %) · **Fuentes:** NotebookLM (4), Quizlet (1) · **Calificación media:** 4,2
- **Parte de la experiencia:** que la app arme las preguntas sola desde el material y diga la respuesta correcta cuando uno se equivoca.
- **Tipo:** praise (4), request (1)
- **Severidad:** n/a (praise). Quien no lo tiene lo pide (F21).
- **Tendencia:** n/a
- > "puedo repasar para mis exámenes como si ya los estuviera haciendo en digital, si me equivoco me dice la forma correcta" (F36)
- > "le falta un tipo de generador de quiz por si mismo, tipo le das el tema y te crea preguntas, repuestas, resúmenes" (F21)

### F6. Ceñirse a la fuente o inventar
- **Reseñas:** 4 (10 %) · **Fuentes:** NotebookLM (4) · **Calificación media:** 4,0
- **Parte de la experiencia:** responder solo con el material que se subió.
- **Tipo:** praise (3), complaint (1)
- **Severidad:** alta cuando falla. La única queja le pone 1 estrella y dice "no sirve".
- **Tendencia:** n/a
- > "se limita estrictamente a los documentos, PDFs o videos de YouTube que uno le sube. Esto elimina por completo los inventos o 'alucinaciones' de la IA." (F33)
- > "omite artículos, luego se inventan cosas y peor, dice lo contrario de lo que especifican las leyes. La verdad no sirve" (F39)

### F7. Olvida el contexto y se repite
- **Reseñas:** 4 (10 %) · **Fuentes:** ChatGPT (4) · **Calificación media:** 1,8
- **Parte de la experiencia:** pierde el hilo, obliga a repetir lo ya trabajado y repite respuestas.
- **Tipo:** complaint
- **Severidad:** alta. Tiene la calificación media más baja del corpus.
- **Tendencia:** n/a
- > "A los pocos mensajes olvida de qué estábamos hablando y pierde el hilo, obligándome a repetir todo desde cero." (F06)
- > "me obliga a repetir una y otra vez cosas que ya habíamos trabajado durante mucho tiempo" (F18)

### F8. Repetición espaciada y progreso
- **Reseñas:** 4 (10 %) · **Fuentes:** Quizlet (3, de 2019 a 2024), NotebookLM (1) · **Calificación media:** 3,2
- **Parte de la experiencia:** que guarde el progreso, use repetición espaciada y refuerce lo fallado.
- **Tipo:** request (2), bug (1), praise (1)
- **Severidad:** media
- **Tendencia:** n/a. Tres de las cuatro reseñas son antiguas.
- > "me ha tocado volver a repasar 3 veces los 260 términos en un día porque no se guardaba el progreso" (F23)
- > "conforme te vas equivocando te refuerza en esos temas" (F35)

### F9. El audio como forma de aprender
- **Reseñas:** 4 (10 %) · **Fuentes:** NotebookLM (4) · **Calificación media:** 5,0
- **Parte de la experiencia:** los resúmenes en audio y en formato de conversación.
- **Tipo:** praise
- **Severidad:** n/a (praise)
- **Tendencia:** n/a
- > "aprendes mucho más con un audio de 23 minutos que con meses de clases de profesores nefastos" (F35)

### F10. La voz se oye mal
- **Reseñas:** 3 (7,5 %) · **Fuentes:** ChatGPT (3) · **Calificación media:** 3,7
- **Parte de la experiencia:** volumen bajo en el parlante y velocidad sin control.
- **Tipo:** bug (2), request (1)
- **Severidad:** baja-media. Con audífonos se resuelve.
- **Tendencia:** n/a
- > "solo puedo escucharlo con bluetooth en auriculares aún con el volumen al máximo" (F07)

### F11. Una sesión de estudio con estructura que se adapte al progreso
- **Reseñas:** 2 (5 %) · **Fuentes:** ChatGPT (2) · **Calificación media:** 4,5
- **Parte de la experiencia:** bloques con tiempo, evaluación al final de cada sesión y ritmo según el rendimiento.
- **Tipo:** request (1), praise (1)
- **Severidad:** baja
- **Tendencia:** n/a
- > "que ChatGPT avisara automáticamente cuándo termina cada bloque. También sería interesante que pudiera adaptar los tiempos según el progreso del estudiante" (F11)

### F12. Aprovechar ratos muertos
- **Reseñas:** 2 (5 %) · **Fuentes:** Quizlet (2) · **Calificación media:** 5,0
- **Parte de la experiencia:** estudiar en cualquier rato con solo el celular.
- **Tipo:** praise
- **Severidad:** n/a (praise)
- **Tendencia:** n/a
- > "puedas aprovechar momentos de espera en el médico, dentista, etc." (F30)

## Frente a las hipótesis de métricas
No aplica: todavía no hay un análisis de métricas de BrainWhisper.

## Qué dice para la spec de BrainWhisper
Es evidencia sobre las alternativas, no sobre BrainWhisper. Lo que sigue dice con qué parte de la spec conversa cada tema.
- **Historia 2, sin tope de minutos y con retomar sin tocar la pantalla:** F1, el tema más frecuente, y F3 coinciden con lo que la spec ya promete frente a ChatGPT. F40 (sin señal) sugiere además mirar el repaso sin conexión.
- **Creencia #15, entender la voz:** F2 muestra que incluso ChatGPT falla seguido al reconocer la voz en español. Esto vuelve más alto el riesgo de #15, ya que BrainWhisper evalúa respuestas habladas, y en voz baja.
- **Historia 3 y creencias #11 y #12, ceñirse a la fuente y no repetirse:** F6 y F7 confirman el dolor. NotebookLM fija la vara ("no alucina"), y su única queja muestra lo que cuesta fallar: "no sirve".
- **Historias 1 y 4:** F5 y F8 coinciden con generar las preguntas del material, corregir y reforzar lo fallado.
- **Creencia #5, precio:** F4 muestra a quien desinstala cuando lo útil es de pago. Es una señal para la preventa, no un cambio en la spec.

## Señales débiles
- **Responder con palabras propias:** "me gustaría que añadieran preguntas de respuesta libre en el cuestionario" (F32, NotebookLM). Es lo que hace BrainWhisper al evaluar respuestas habladas.
- **Formatos de material:** "solo tiene para subir archivos pdf y es un poco molesto tener que cambiar el formato de pptx a pdf" (F31, NotebookLM). Encaja con la duda del panel de crítica sobre cómo entra el material.
- **Elogio general de ChatGPT para repasar temas** (F17).
