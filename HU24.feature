Feature: Recomendación de trivias según hábitos de estudio
    Como estudiante universitario
    quiero recibir recomendaciones de trivias basadas en mis hábitos de estudio
    para optimizar mi tiempo de aprendizaje.

Scenario Outline: Recomendación diaria basada en patrones de estudio

Dado que el <estudiante universitario> accede a 
la <sección de recomendaciones> 

Cuando el sistema analiza su <historial de trivias> y frecuencia de estudio

Entonces se generan recomendaciones de <trivias personalizadas> ajustadas a 
sus áreas de interés y mejora.

Examples: Datos de entrada
    | estudiante universitario | sección de recomendaciones | historial de trivias | trivias personalizadas |
    | Juan Pérez | apartado de sugerencias | 50 trivias de software | Trivias nivel avanzado |