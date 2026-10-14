# BrainWhisper

mode: new · commercial

BrainWhisper es un tutor de voz que se sincroniza con todo el material de estudio del usuario (Drive, OneDrive, Notion, repositorios) y asume la gestión completa de su aprendizaje: arma un plan de estudio dinámico, pregunta por voz, evalúa la respuesta hablada y da feedback, sin que el usuario toque una pantalla. El plan se ajusta en la propia conversación: el usuario puede pedir en cualquier momento un cambio de tema o de foco, y BrainWhisper lo incorpora como una variable más de la estrategia. Busca conservar la eficacia de la repetición espaciada (estilo Anki) eliminando su fricción: crear y organizar tarjetas, calificarse a mano, depender de la pantalla. Modelo SaaS: freemium B2C y licencias por asiento B2B (más adelante).

## Para quién

**Primer usuario aún sin definir.** Criterios para elegirlo: dolor agudo y frecuente (mucho material que retener, algo en juego), ya intenta resolverlo (Anki, fichas, ChatGPT), tiene tiempo muerto con manos libres, su material ya es digital, ya paga por aprender y el equipo puede contactarlo.

Candidatos, por orden de encaje con esos criterios:
1. Profesionales que preparan un examen o certificación con fecha y mucho en juego (AWS, PMP, CFA, residencia médica, colegiatura).
2. Estudiantes universitarios con carga alta de memorización (fáciles de contactar, poca disposición a pagar).
3. Profesionales en reskilling, perfiles técnicos y lifelong learners (sin urgencia clara).

B2B (EdTech, universidades, bootcamps, L&D) queda fuera del primer usuario: se aborda cuando el valor esté probado en B2C.

## Creencias no verificadas

Ordenadas por impacto × incertidumbre. La primera es la que hay que atacar ahora.

1. [product] [value] El usuario prefiere un plan de estudio que el sistema arma y ajusta solo, al que puede pedir cambios de tema o de foco en la conversación, antes que diseñar y configurar su propio plan. En la práctica, la mayoría de las sesiones seguirían el plan propuesto con ajustes puntuales por voz. Si la mayoría ignora el plan y elige el tema cada vez, o no confía en él, la gestión dinámica no es el valor central y el producto se queda en "preguntas por voz". (En entrevistas, sondear lo que hacen hoy —si planifican su estudio, si siguen planes de academias o tutores, si pagan por ello— y no la opinión sobre la idea. La prueba real pide un test de solución tipo concierge o Wizard of Oz.)
2. [product] [value] Quienes necesitan retener mucho material, hayan usado o no herramientas de repetición espaciada como Anki, no logran mantener una rutina de repaso sostenida, y la causa principal es el trabajo de organizarla (preparar el material, decidir qué y cuándo repasar, depender de la pantalla), no la falta de motivación ni de tiempo. Si la mayoría sostiene su repaso sin problema, o lo abandona por motivos que la gestión no resuelve, la creencia 1 no tiene problema que resolver.
3. [product] [value] El usuario objetivo tiene momentos con las manos libres (transporte, ejercicio, tareas domésticas) y estaría dispuesto a usarlos para estudiar de forma activa, respondiendo en voz alta, en lugar de escuchar música, podcasts o descansar.
4. [product] [value] Hay un segmento concreto, probablemente profesionales que preparan un examen con fecha y mucho en juego, en el que este dolor es bastante más agudo que en universitarios o lifelong learners, lo bastante como para cambiar de herramienta.
5. [product] [viability] El usuario objetivo pagaría una suscripción mensual por la gestión autónoma sin límites. Hipótesis inicial: entre 8 y 15 USD al mes, el rango de Quizlet Plus y Duolingo Super. Precio aún sin validar.

> Pendiente para la spec (factibilidad, fuera de este overview): que la IA genere buenas preguntas a partir de material heterogéneo y evalúe bien respuestas habladas sin alucinar (KPI System Accuracy Rate).
