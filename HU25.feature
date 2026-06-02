Feature: Sistema de puntuación por nivel
    Como estudiante universitario
    quiero recibir recomendaciones de trivias basadas en mis preferencias
    para optimizar mi tiempo de aprendizaje.

Scenario Outline: Recomendación diaria de trivias

Dado que el <estudiante> desea una recomendación diaria de trivias, selecciona la <pestaña de trivias>, 
luego <clickea en el apartado de preferencias> y selecciona los <temas> que quiere.
Cuando el estudiante <clickea sobre los íconos de los temas de su preferencia> y presiona en el botón de <aplicar cambios>.
Entonces el sistema debe <sugerir trivias nuevas basadas en sus preferencias> al momento que el estudiante realice una trivia.

Examples: Datos de entrada
    | estudiante      | clickea en el apartado de preferencias | temas                | clickea sobre los iconos de los temas de su preferencia | aplicar cambios |
    | Adrian Cevallos | True                                   | Diseño arquitectónico | True                                                   | True            |

Examples: Datos de salida
    | sugerir trivias basadas en preferencias |
    | Debido a tu interes por las trivias para el curso de Comprension y Produccion del lenguaje, te recomendamos estas trivias para el curso |
    | Debido a tu interes por las trivias para el curso Diseño de bases de datos, te recomendamos estas trivias para el curso |


Scenario Outline: Ajuste de Recomendaciones

Dado que el <estudiante> desea cambiar sus <recomendaciones de trivias>, ingresa en la <pestaña de trivias>,
luego accede al apartado de preferencias y da <click en configurar preferencias>.
Cuando accede a este apartado, el estudiante podrá <cambiar los temas que previamente había elegido por otros diferentes>
y luego de haber seleccionado las nuevas preferencias, debe dar <click en el apartado de aplicar cambios>.
Entonces el sistema debe <ajustar las recomendaciones de trivias basadas en las nuevas preferencias> que el estudiante ha determinado,
lo cual se verá demostrado cuando el estudiante desarrolle una trivia diaria.

Examples: Datos de entrada
    | estudiante    | recomendaciones de trivias           | click en configurar preferencias | cambiar los temas que previamente había elegido por otros diferentes | click en el apartado aplicar cambios |
    | Monica Torres | Trivia avanzada para calculo 1      | True                             | tema seleccionado anteriormente: calculo, tema nuevo: fisica        | True                                |

Examples: Datos de salida
    | Ajustar las recomendaciones de trivias basadas en las nuevas preferencias |
    | Trivia nueva mostrada del tema de : Fisica                                |
    | Trivia nueva mostrada del tema de : Responsabilidad Civil                 |
    | Trivia nueva mostrada del tema de : Lógica                                 |
