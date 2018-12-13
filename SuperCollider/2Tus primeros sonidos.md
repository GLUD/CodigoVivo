
#Los primeros sonidos

Cuando ingresamos al editor *scide* lo primero que debemos hacer es iniciar el servidor ya que esto es lo que nos permite la comunicación entre el *Scsynth* y el *Sclang*, podemos hacerlo con las siguientes líneas de código en el *scide*.

~~~

s=Server.local
s.boot
s.quit

s=Server.internal
s.boot
s.quit

~~~

##UGens
Los UGens (Unit Generators)  representan cálculos con señales. Son los componentes básicos de las definiciones de sintetizador en el servidor y se utilizan para generar o procesar señales de audio o de control. 

Sus nombres comienzan con mayúsculas y pueden ser de dos tipos:

1. Audio Rate (.ar) 
Estos UGens corren a velocidad de audio: 44100 samples por segundo. Hay que mandar el mensaje .ar a los UGens que sean parte de la cadena de audio que será escuchada. 

2. Control Rate (.kr)
Estos UGens corren a velocidad de control. Producen un sample por cada 60 samples hechos por un UGen.ar. Es decir 44000/60=735 samples por segundo. Por esto, los UGens de control son más económicos computacionalmente hablando.

Generalmente, los UGens de control se usan como moduladores, es decir, como señales que le dan forma a la señal de audio.

SuperCollider tiene más de 250 UGens, y algunos pueden ser clasificados como: fuentes periódicas o aperiódicas, filtros, *panning*, *reverbs*, *granular synthesis*, espectral, *etc*


###Fuentes periodicas: Osciladores

Entre las fuentes periodicas se encuentran los osciladores que comprenden una serie de argumentos ordenados que indican su comportamiento, como son: frecuencia, fase y amplitud, aunque existen argumentos exclusivos para ciertos osciladores.


####SinOsc

Es un oscilador de onda senoidal. Funciona con mensajes .ar y .kr. Sus argumentos son: frecuencia, fase, mul y add. Su sintaxis es la siguiente:

SinOsc.ar(frec, fase, mul, add)

~~~
{SinOsc.ar (1200, 0, 0.1)}.play //onda senoidal


{SinOsc.ar (700, 0, 0.1)!2}.play   //para crear un stéreo rápidamente:
~~~

>{   }.play es la forma más simple para generar sonido, muy útil para probar algo rápidamente pero no muy conveniente para construir piezas.


Frecuencia: Ciclos por segundo o Hertz. El rango auditivo general del ser humano es de 20Hz a 20KHz. El default en SC es de 440Hz.

Fase: Punto del ciclo en el que queremos que inicie el oscilador. Se especifica en radianes y su rango es de 0 a 2pi. El default es 0 que es el inicio del ciclo.

Mul: Número por el que multiplicamos la señal. Generalmente se identifica con el volumen o amplitud del sonido siendo 0 el mínimo y 1 el máximo recomendado. El default es 1.

add: Número que se le suma a la señal del oscilador. Notar que se pone primero el mul y luego el add. El default es 0, dejando la señal sin alterar.

####LFTri
~~~
{LFTri.ar (700, 0, 0.3)!2}.scope //onda triangular
~~~
>.play se usa para el servidor local y .scope para el interno.
####Saw

~~~
{Saw.ar (750, 0.1)!2}.scope // onda saw tooth
~~~
####Pulse

~~~
{Pulse.ar (700, 0.2, 0.1) !2}. scope //onda cuadrada
~~~



#### Impulse
~~~
{Impulse.ar(30)}.scope
~~~

#### Dust
~~~
{Dust.ar(30)}.scope
~~~

#### SoundIn
~~~
{SoundIn.ar(0)*SinOsc.ar(MouseX.kr(80,640).poll)}.play
~~~
 


Fuentes:

[1] Página oficial de SuperCollider. https://supercollider.github.io/

[2] Alexandra Cardenas. Taller de SuperCollider Básico https://basicsupercollider.wordpress.com/clases/

[3] Tour of UGens. Documentación oficial de SuperCollider 
