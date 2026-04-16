Feature: Recomendación de trivias según hábitos de estudio
    Como estudiante universitario
    quiero recibir recomendaciones de trivias basadas en mis hábitos de estudio
    para optimizar mi tiempo de aprendizaje.

Scenario Outline: Recomendación diaria basada en patrones de estudio

    Dado que el <estudiante universitario> accede a la <sección de recomendaciones>
    Cuando el sistema analiza su <historial de trivias> y frecuencia de estudio 
    Entonces se generan recomendaciones de <trivias personalizadas> ajustadas a sus áreas de interés y mejora.

Examples: Datos de entrada
    | estudiante universitario | sección de recomendaciones | historial de trivias     |
    | Carlos Vega              | apartado de sugerencias    | 50 trivias de Software   |
    | Estudiante Nuevo         | inicio de recomendaciones  | 0 trivias completadas    |

Examples: Datos de salida
    | trivias personalizadas |
    | Debido a tu buen desempeño en Ingeniería de Software, te recomendamos este nivel avanzado | 
    | Al ser tu primera vez, te recomendamos iniciar con estos temas básicos para conocer tu nivel | 

Scenario Outline: Recomendación general debido a falta de datos

    Dado que el <estudiante universitario> es nuevo y no tiene suficiente historial
    Cuando solicita <recomendaciones>
    Entonces el sistema muestra un <conjunto estándar de trivias> para recolectar datos iniciales.

Examples: Datos de entrada
    | estudiante universitario | recomendaciones     |
    | Usuario Nuevo 01         | Sin historial previo |
    | Adrian Cevallos          | 0 trivias completadas  |

Examples: Datos de salida
    | conjunto estándar de trivias |
    | Se han generado 5 trivias introductorias de temas generales para identificar tus fortalezas académicas |
    | Bienvenido, aquí tienes una selección básica de trivias para comenzar tu perfil de aprendizaje |
