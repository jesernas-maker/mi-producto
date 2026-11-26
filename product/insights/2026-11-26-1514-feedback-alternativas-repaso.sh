#!/bin/sh
# Conteo de temas del análisis product/insights/2026-11-26-1514-feedback-alternativas-repaso.md
# Etiquetas asignadas a mano sobre product/data/2026-11-26-feedback-alternativas-repaso.csv
# Formato: id|calificación|temas separados por ;
# Uso: sh 2026-11-26-1514-feedback-alternativas-repaso.sh
awk -F'|' '
{ n = split($3, t, ";"); for (i = 1; i <= n; i++) { c[t[i]]++; s[t[i]] += $2; ids[t[i]] = ids[t[i]] $1 " " } }
END {
  for (k in c) printf "%-20s %2d  %4.1f%%  media=%.1f  %s\n", k, c[k], c[k] * 100 / NR, s[k] / c[k], ids[k]
  printf "total entradas: %d\n", NR > "/dev/stderr"
}' <<'TAGS' | sort -k2 -nr
F01|1|voz_entiende
F02|4|voz_entiende;voz_salida
F03|2|limites;contexto
F04|1|limites;contexto
F05|4|limites
F06|3|contexto
F07|2|voz_salida
F08|3|voz_entiende
F09|5|limites
F10|4|voz_entiende;pago
F11|4|sesion_estructurada
F12|5|sesion_estructurada
F13|3|limites;pago
F14|5|voz_salida
F15|2|voz_entiende
F16|1|voz_entiende
F17|5|general
F18|1|contexto
F19|2|limites
F20|2|limites
F21|1|cuestionario;pago
F22|5|audio_manos_libres
F23|3|progreso_re;pago
F24|3|progreso_re
F25|5|audio_manos_libres
F26|5|ratos_muertos
F27|4|audio_manos_libres
F28|2|progreso_re;pago
F29|4|limites
F30|5|ratos_muertos
F31|2|carga_material
F32|5|audio_aprender;cuestionario;respuesta_libre
F33|5|fuente;cuestionario
F34|2|audio_manos_libres
F35|5|fuente;cuestionario;progreso_re;audio_aprender
F36|5|cuestionario;fuente;audio_aprender
F37|5|audio_aprender
F38|4|audio_manos_libres
F39|1|fuente
F40|4|audio_manos_libres
TAGS
