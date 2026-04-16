Feature: Sistema de puntuación por nivel
    Como estudiante universitario
    quiero que el sistema de puntuación esté basado en niveles
    para que refleje mi experiencia y crecimiento en la plataforma.

Scenario Outline: Subida de nivel al alcanzar el puntaje requerido

Dado que el <estudiante universitario> ha acumulado 
un <número determinado de puntos>

Cuando completa una trivia que le permite alcanzar 
el puntaje necesario para subir de nivel

Entonces el sistema actualiza el <nivel del usuario> y
muestra una <notifiación de felicitación>.

Examples: Datos de entrada
    | estudiante universitario | número determinado de puntos | nivel del usuario | notificación de felicitación |
    | Juan Pérez | 1000 puntos | Nivel 2 | "¡Felicidades, has subido al Nivel 2!" |