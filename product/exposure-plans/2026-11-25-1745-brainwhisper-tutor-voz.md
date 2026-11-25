---
spec: product/specs/2026-11-25-1712-brainwhisper-tutor-voz.md
date: 2026-11-25
---

# Plan de exposición: BrainWhisper, repaso por voz con corrección en el trayecto

## Hipótesis que se resuelve
Tomada de la spec, sin cambios:

> Creemos que quienes preparan una certificación o un posgrado con fecha y tienen un trayecto diario en transporte público de 30 minutos o más harán 3 o más sesiones de repaso por voz por semana en su trayecto, durante al menos 3 semanas, y seguirán hasta su examen, porque cada respuesta recibe una corrección inmediata ceñida a su propio material y el plan les dice qué toca hoy sin que tengan que armarlo.
>
> Estamos equivocados si la mayoría hace menos de 3 sesiones por semana antes de la tercera semana, si más del 20 % de sus repasos en el trayecto vuelven a ChatGPT de voz sin guía, a recitarse solos o a esperar a una compañera, o si la mayoría no hace ninguna sesión la semana siguiente a la tercera.

**Audiencia de todos los niveles:** el mismo grupo, que acumula capas. Son profesionales en Bogotá que preparan una certificación o un posgrado con examen al menos 10 semanas después de entrar (lo que duran los cuatro niveles), y que tienen un trayecto diario en transporte público de 30 minutos o más.

## Nivel 1. Subir el material y repasar por voz con corrección
- **Qué se revela:**
  - Subir PDF o documentos, con la fecha del examen y la duración del trayecto.
  - Ver qué parte del material cabe en voz, por dominio.
  - Sesiones por voz sobre el dominio que la persona elige, con corrección inmediata ceñida a su material y la fuente citada.
  - Retomar la sesión cuando se cae la señal, sin tope de minutos dentro del trayecto.
  - **Todavía apagado:** la memoria de errores, la repetición espaciada, el plan hasta el examen y el repaso en casa. Cada sesión empieza de cero.
- **Creencia:** quienes reciben una corrección por voz ceñida a su propio material la eligen para repasar en su trayecto en lugar de lo que usaban (#11, con la entrada del material, #14, como condición).
- **Duración:** 1 semana.
- **Validación:**
  - **Avanzar si:** el 70 % o más de quienes subieron material hacen 2 o más sesiones en el trayecto durante la semana, y en la auditoría semanal el 90 % o más de las correcciones se ciñen a la fuente.
  - **Detener si:** menos del 50 % vuelve a una segunda sesión; o quienes no vuelven dan como razón que la corrección se salió del material o estuvo mal; o la auditoría queda por debajo del 90 %; o la mayoría no llega a su primera sesión porque no pudo subir su material.

## Nivel 2. Las preguntas vuelven cuando les toca
- **Qué se revela:**
  - Todo lo del nivel 1.
  - El estado y el historial de cada pregunta.
  - La repetición espaciada: las falladas vuelven pronto, las dominadas vuelven cada vez más espaciadas, y las que se fallan después de haberse acertado vuelven a subir de frecuencia.
  - Al final de cada sesión, cuántas falló.
  - La persona sigue eligiendo el dominio.
  - **Todavía apagado:** el plan hasta el examen y el repaso en casa.
- **Creencia:** cuando cada pregunta vuelve según cómo la ha respondido, la persona siente que su repaso avanza en lugar de repetirse, y lo sostiene semana a semana (#11, #13).
- **Duración:** 2 semanas.
- **Validación:**
  - **Avanzar si:** el 60 % o más hace 3 o más sesiones por semana en las dos semanas; menos del 10 % de las preguntas se reportan como repetidas fuera de lo que programa la regla; y el estado que asigna el sistema coincide con el de una revisión humana en el 90 % o más de una muestra semanal.
  - **Detener si:** la mayoría baja de 2 sesiones por semana; o la repetición aparece como razón de abandono; o la coincidencia de estados queda por debajo del 90 %.

## Nivel 3. El plan hasta el examen
- **Qué se revela:**
  - Todo lo del nivel 2.
  - El plan hasta la fecha del examen, activo por defecto: cada sesión trae lo que toca hoy, con una carga que cabe en el trayecto e intervalos que se acortan al acercarse el examen.
  - Repasar sin plan cuando la persona lo pide por voz, sin perder el plan.
  - **Todavía apagado:** el repaso en casa.
- **Creencia:** con un plan que les dice qué toca hoy, las personas sostienen el repaso en su trayecto durante 3 semanas y deciden seguir hasta su examen. Es la hipótesis de la spec (#10, con el plan, #1, como diagnóstico).
- **Duración:** 3 semanas, más la semana siguiente.
- **Validación:**
  - **Avanzar si:** la mayoría hace 3 o más sesiones por semana durante las 3 semanas; el 80 % o más de sus repasos en el trayecto pasan por BrainWhisper; y la mayoría hace al menos una sesión la semana siguiente. Como diagnóstico, se mide qué parte de las sesiones sigue el plan: si la mayoría lo ignora, el plan pasa a ser complemento y no diferencial (#1), pero eso no detiene el nivel.
  - **Detener si:** la mayoría baja de 3 sesiones por semana antes de la tercera semana; o más del 20 % de sus repasos en el trayecto vuelven a ChatGPT de voz sin guía, a recitarse solos o a esperar a una compañera; o la mayoría no hace ninguna sesión la semana siguiente.

## Nivel 4. Repasar también en casa
- **Qué se revela:**
  - Todo lo del nivel 3.
  - Sesiones en casa: la persona dice por voz cuánto tiempo tiene o termina cuando quiere, y lo que responde cuenta igual que en el trayecto y alimenta el mismo plan.
  - La opción de hacer en casa una primera sesión corta, para quien entra nuevo.
- **Creencia:** quien tiene un rato en casa con las manos ocupadas, o de noche con la vista cansada de pantalla, repasa por voz en ese rato además del trayecto (#16).
- **Duración:** 3 semanas.
- **Validación:**
  - **Avanzar si:** el 50 % o más de quienes dicen tener ese rato hace al menos una sesión por semana en casa durante las 3 semanas, sin que bajen sus sesiones en el trayecto.
  - **Detener si:** menos del 25 % hace sesiones en casa; o la razón que dan es la pena frente a quienes viven con ella o no tener un rato propio; o las sesiones en casa reemplazan a las del trayecto en lugar de sumarse.

## Mecanismo de revelado
Se recomienda revelar con **interruptores de funcionalidad (feature flags)**: se construye completo y cada capa se enciende al cerrar la validación del nivel anterior. La razón principal es que el grupo es pequeño y reclutado a mano, y cada persona tiene que recibir la capa siguiente en un momento definido de su preparación. Además, quienes entren más adelante (sobre todo para el nivel 4) necesitan empezar desde el nivel 1 sin que se les muestre todo junto. La decisión final es de ingeniería.

## Validaciones en paralelo
- **Exactitud técnica (#12, #13, #15).** T1 a T3 quedaron inconclusive, así que la exactitud de las preguntas, de la corrección, de los estados y del reconocimiento de voz en voz baja se mide desde el nivel 1, con la auditoría semanal y una muestra de respuestas revisadas a mano. Si cae por debajo del umbral, detiene el nivel, como dicen las validaciones.
- **Costo de voz por sesión.** Sin tope de minutos dentro del trayecto, el costo de voz por persona al mes tiene que caber en el precio local que se pruebe (≈ 3–6 USD al mes, o 8–15 USD si se valida el rango de referencia; #5). Se calcula con los minutos reales de los niveles 1 a 3.
- **Precio y ciclo de pago (#5, #6).** Se responden en la preventa, no en este plan. Conviene correrla a la par del nivel 3, cuando el producto ya muestra su valor completo.

## Preguntas abiertas para el equipo de producto
- **Reclutamiento:** ¿de dónde sale el grupo? Hacen falta personas con examen al menos 10 semanas después de entrar y con trayecto en transporte público. Mateo (examen en enero) no alcanza a recorrer los cuatro niveles, y no está confirmado que Eliana tenga trayecto.
- **Tamaño del grupo:** con 2 personas, "la mayoría" son las dos, y un solo abandono decide el nivel. ¿Cuántas personas se pueden reclutar y acompañar?
- **Andrés, la persona de diseño:** hoy escucha podcasts en el trayecto (#3 abierta). ¿Entra al grupo alguien como él, aunque no repase hoy por voz? Si entra, conviene que use la primera sesión en casa antes de llegar al nivel 4.
- **Formatos de material:** las notas a mano y las exportaciones de Notion quedan fuera de la carga en esta versión. ¿Cuántas personas del grupo tienen su material solo así?
