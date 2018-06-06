# Taller Shaders

## Objetivos

Profundizar en el uso y programación de shaders en la programación gráfica.

## Desarrollo

Para la elaboración de éste taller, se pensó en implementar mediante un shader de color (Fragment Shader), la representación gráfica de los conjuntos de [Mandelbrot.] (https://www.youtube.com/watch?v=NGMRB4O922I)
Para ello, es necesario considerar el espacio de dibujado como un plano complejo, donde el eje X del plano se considera como el componente real de un número complejo C que satisfaga
la función Z(n) que define el conjunto de Mandelbrot, mientras que el eje Y del espacio de dibujo representa la componente imaginaria. Para entender la resolución de la función, sirvase ver 
el siguiente [vídeo.] (https://www.youtube.com/watch?v=6z7GQewK-Ks) Una vez hallada la solición, solo se debe estimar para cada punto del espacio de dibujado si este corresponde a 
algún valor complejo C que satisfaga la condición de frontera del conjunto. 

## Integrantes


| Integrante           | github nick |
|----------------------|-------------|
| Sergio Andres Cabezas|seacabezasma |

## Discusión

Una vez implementado el shader, es necesario mantener la escala del espacio de dibujado, con respecto al dominio del espacio de números complejos en que se encuentra el conjunto, de ahí que todas 
las dimensiones se encuentren normalizadas. Ahora, tras renderizar un cuadrado usando el shader, al aplicar zoom sobre los bordes del conjunto, es posible identificar las devergencias en la frontera
del conjunto que dan la forma tan caracteriztica al mismo. Un cambio a considear es mejorar la forma de implementación del Zoom sobre el conjunto para lograr mantener la visualización 
del conjunto sobre su frontera, que es donde mas interesa obervar. 


## Referencias:

[Fast and easy high resolution fractals with a pixel shader](http://nuclear.mutantstargoat.com/articles/sdr_fract/#mbrot_sdr)

[The Mandelbrot Set - Numberphile](https://www.youtube.com/watch?v=NGMRB4O922I)

[Coding Challenge #21: Mandelbrot Set with p5.js](https://www.youtube.com/watch?v=6z7GQewK-Ks)