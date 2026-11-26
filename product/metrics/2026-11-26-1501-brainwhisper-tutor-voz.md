---
spec: product/specs/2026-11-25-1712-brainwhisper-tutor-voz.md
exposure-plan: product/exposure-plans/2026-11-25-1745-brainwhisper-tutor-voz.md
level: 1. Subir el material y repasar por voz con corrección
status: designed
---

# Métricas para: BrainWhisper, repaso por voz con corrección en el trayecto

## Audiencia objetivo
Las personas que entran al nivel 1: profesionales en Bogotá que preparan una certificación o un posgrado con examen al menos 10 semanas después de entrar, con un trayecto diario en transporte público de 30 minutos o más. Fuente: el segmento del overview, acotado por la audiencia del plan de exposición. Cuentan las personas invitadas, no las cuentas creadas. Tamaño: por definir (el reclutamiento está pendiente).

## Frecuencia esperada
Varias veces por semana, en el trayecto. Mateo repasa por voz en el TransMilenio 3 veces por semana (real, insights/2026-11-17-1727-repaso-activo-manos-libres.md), y la hipótesis de la spec pide 3 o más sesiones por semana. La ventana de retención es semanal.

## Acquisition
- **Señal:** sube su material y empieza su primera sesión por voz.
- **Definición ampliada:** cuenta quien sube al menos un archivo que BrainWhisper puede leer y responde al menos una pregunta en una sesión. No cuenta quien solo sube el material.
- **Cálculo:** personas que subieron material y empezaron una sesión / audiencia objetivo, durante la semana del nivel.
- **Meta:** 80 % · **Por qué:** son personas reclutadas y con examen, así que quien no llega a la primera sesión se trabó al subir el material (#14). El plan detiene el nivel si la mayoría no llega por esa razón; 80 % deja margen sobre ese límite.
- **Eventos necesarios:** `material_subido` (persona_id, nivel, n_archivos, archivos_no_leidos, dominios_encontrados, porcentaje_en_voz, timestamp); `sesion_iniciada` (persona_id, sesion_id, nivel, contexto, dominio, timestamp); `respuesta_corregida` (ver Activation).

## Activation
- **Señal:** completa una sesión en el trayecto con al menos 10 respuestas corregidas.
- **Definición ampliada:** cuenta la sesión con `contexto = trayecto` en la que la persona respondió 10 preguntas o más y recibió corrección en cada una. Las sesiones cortadas por la conexión y retomadas cuentan como una sola.
- **Umbral de la señal:** 10 respuestas corregidas en una sesión · **Por qué:** es un repaso real en el trayecto, no una prueba. Mateo hace unas 15 preguntas en 20 minutos, así que 10 caben en el trayecto más corto del segmento (30 minutos). La corrección ceñida a su material es lo que dice la hipótesis que vale. · **Excluye:** sesiones con menos de 10 respuestas, sesiones fuera del trayecto y sesiones abandonadas sin retomar.
- **Cálculo:** personas con al menos una sesión activada / audiencia objetivo, durante la semana del nivel.
- **Meta:** 75 % · **Por qué:** tiene que quedar por encima del 70 % que el plan pide para avanzar en retención; nadie retiene sin haber activado antes.
- **Eventos necesarios:** `respuesta_corregida` (persona_id, sesion_id, pregunta_id, dominio, veredicto: bien/mal/incompleta, fuente_citada, pidio_repetir, timestamp); `sesion_retomada` (persona_id, sesion_id, timestamp); `sesion_terminada` (persona_id, sesion_id, contexto, n_respuestas, minutos, motivo_fin: completa/cerrada/conexion, timestamp).
- **Aproximación declarada:** `contexto` lo dice la persona con una palabra por voz al empezar la sesión ("trayecto" o "casa"). No se infiere de la ubicación.

## Retention
- **Señal:** una segunda sesión activada en el trayecto, dentro de la misma semana.
- **Definición ampliada:** cuenta quien tiene 2 o más sesiones activadas en el trayecto en los 7 días siguientes a la primera.
- **Curva de retención:** cohortes por semana de la primera activación, seguidas semana a semana. En el nivel 1 hay un solo punto; la curva sigue en los niveles 2 y 3 con las mismas cohortes.
- **Cálculo:** personas con 2 o más sesiones activadas en el trayecto en la semana / audiencia objetivo.
- **Meta:** 70 % · **Por qué:** es el criterio de avance del nivel 1 en el plan.
- **Eventos necesarios:** los de Activation.

## Satisfaction
- **Instrumento:** CSAT por voz, con una pregunta de seguimiento opcional · **Pregunta:** "Del 1 al 5, ¿qué tanto te sirvieron las correcciones de hoy para repasar?" y, si responde, "¿por qué?" · **Cuándo aparece:** al terminar la segunda sesión activada; también se puede responder después en pantalla · **Corte:** 4 o más.
- **Definición ampliada:** cuenta quien responde 4 o 5. Quien no responde no cuenta como satisfecho.
- **Cálculo:** personas con 4 o más / audiencia objetivo. La tasa de respuesta y la proporción entre quienes respondieron se reportan aparte.
- **Meta:** 60 % · **Por qué:** por debajo de la retención (70 %), porque no todos responden. Si queda muy por debajo con una retención alta, son usuarios cautivos.
- **Eventos necesarios:** `encuesta_mostrada` (persona_id, sesion_id, canal: voz/pantalla, timestamp); `encuesta_respondida` (persona_id, sesion_id, puntaje, comentario, timestamp).

## Métricas de negocio
none declared. El precio y el ciclo de pago (#5, #6) se responden en la preventa, en paralelo al nivel 3. El costo de voz por sesión se calcula con `sesion_terminada.minutos`.

## Conciliación con el plan de exposición
- **Avanzar, "70 % o más hace 2 o más sesiones en el trayecto":** lo lee Retention (meta 70 %).
- **Avanzar, "auditoría de correcciones ceñidas ≥ 90 %":** ninguna métrica AARS lo lee. Lo lee la auditoría semanal, con `respuesta_corregida.fuente_citada` y la revisión humana.
- **Detener, "menos del 50 % vuelve a una segunda sesión":** lo lee Retention, como piso.
- **Detener, "quienes no vuelven culpan a la corrección":** ninguna métrica lo lee. Sale de la pregunta de abandono y de los comentarios del CSAT.
- **Detener, "la mayoría no llega a la primera sesión por no poder subir el material":** lo lee Acquisition, junto con `material_subido.archivos_no_leidos`.
