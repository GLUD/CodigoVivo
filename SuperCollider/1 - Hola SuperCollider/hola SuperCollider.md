# HOLA SUPERCOLLIDER
SuperCollider es una plataforma para la síntesis de audio y la composición algorítmica, fue desarrollado por James McCartney y en 2002 fue liberado bajo la Licencia Pública General de GNU, es gratuito y está disponible para Windows, macOS y GNU/Linux.

> SuperCollider se encuentra disponible desde su página oficial https://supercollider.github.io/download

SuperCollider está basado en Smalltalk, un lenguaje de programación orientado a objetos. 

## Estructura de SuperCollider

El ambiente de SuperCollider se divide en un servidor y un cliente que se comunican a través de OpenSound Control (OSC), que en pocas palabras es una versión aumentada y corregida del protocolo MIDI.

El servidor es conocido como scsynth y es lo que hace a SuperCollider un lenguaje tan poderoso. Se pueden crear varios synths en el servidor. Cada synth crea un nodo que puede ser controlado independientemente o junto a los demás. Soporta un número indefinido de canales. Permite la creación de Buffers de audio para reproducir o grabar. 

SuperCollider tiene dos servidores predefinidos: el interno y el local. El servidor interno corre en el mismo proceso que la aplicación, es decir que es interno al programa, esto hace que tengan una mayor comunicación. El servidor local corre en la misma máquina que la aplicación. En caso de que el servidor se caiga, la aplicación seguirá corriendo y viceversa.

Es posible crear más servidores y que estos estén en distintas computadoras conectadas vía internet o ethernet.

Es así como SuperCollider presenta tres componentes principales:

**Scsynth**, un servidor de audio en tiempo real, forma el núcleo de la plataforma. Cuenta con más de 400 generadores de unidades ("UGens") para análisis, síntesis y procesamiento. Este componente es que nos permite "producir" el sonido.

**Sclang**, un lenguaje de programación interpretado, es el encargado de controlar a scsynth a través de Open Sound Control. Es el que nos va permitir realizar nuestras composiciones.

**Scide**, un editor para sclang con un sistema de ayuda integrado.

## Conceptos iniciales

Antes de empezar, es necesario definir algunos conceptos que nos van a permitir comprender el funcionamiento de SuperCollider.

### Lenguaje de Programación
Un lenguaje de programación es un conjunto de  símbolos y reglas utilizado para controlar el comportamiento físico y lógico de una máquina. Cada lenguaje tiene sus características específicas para lograr diferentes tareas por medio de algoritmos.

Los lenguajes de programación pueden dividirse según su nivel de abstracción en: Lenguaje de máquina, Lenguaje de bajo nivel, Lenguaje de medio nivel y Lenguaje de alto nivel. SC es un lenguaje de programación de alto nivel. Es decir, que su nivel de abstracción es tan alto que tiene cosas muy similares al lenguaje hablado (en este caso el inglés) por lo cual es más fácil de aprender que uno de bajo nivel.

También pueden dividirse según su paradigma de programación, es decir su enfoque o filosofía. Dependiendo de la situación, un paradigma resulta más apropiado que otro. Así, se dividen en: Lenguajes imperativos (Como C++ o BASIC) que dan órdenes a la computadora. Lenguaje funcional (como Lisp) que se basan en funciones matemáticas. Lenguajes lógicos (como Prolog) que utilizan métodos de procesamiento basados en el razonamiento formal. Por último tenemos los Lenguajes orientados a objetos (Como Smalltalk), que usa objetos y sus interacciones.

### Un Objeto
Un Objeto es una abstración, una representación computacional que conjuga en un solo elemento datos y funciones. Los datos representan sus atributos o variables, y las funciones, su comportamiento. Los objetos se definen bajo una estructura de programación llamada clase, y la clase cuenta con un constructor para que permita instanciarlo.  Esto es importante porque *en SuperCollider todo es un objeto.* 


## El ambiente de SuperCollider

SuperCollider está basado en Smalltalk, aunque tiene una sintaxis más flexible. Es un lenguaje de programación dinámico muy eficiente y expresivo. Como casi cualquier lenguaje de programación, supercollider permite evaluar expresiones matemáticas sencillas, definir variables tanto locales como globales, definir arreglos o escribir funciones. 

Para *ejecutar* el código en SuperCollider podemos pulsar Control + Enter en Windows y GNU/Linux o Comand + Enter en Mac. A continuación vamos a mostrar algunos ejemplos de introducción a la programación básica en SuperCollider.


### Imprimir a la consola
~~~

"hola mundo".postln;

2+3;

10/4;

3.5*3;

2**8;

~~~

### Variables 

~~~

// Definir Variables Locales
a = 5;
b = 3;
c = a+b;

// Definir Variables Globales
~variable1 = 5;
~variable2 = 10;
~resultado = ~variable1 + ~variable2;
~resultado.postln;

// Bloque de código
(
~nombre = "Juan";
~apellido = "Pérez";
~completo = ~nombre + ~apellido;
~completo.postln;
)

~~~

### Arreglos
~~~
~lista = [20,13,15];  //Definir una arreglo

~lista[0];  //Imprimir el contenido de la primera posición del arreglo 

~lista.size; // Obtener el tamaño del arreglo o la lista


[1,2,3]+10;  //Sumar un número a cada uno de los elementos de la lista

[20,10,30,9].sort;   // Ordenar la lista

[1,2,3,4].revers  //// Retrógrado
~~~


### Funciones
~~~

//Definir la función que suma dos variables
(
~suma = {arg x,y;
	var resultado;
	resultado = x+y;
}
)

// Llamar a la función
~suma.value(5,8);

//Definir la función promedo, pasado unos valores por defecto
(
~promedio = {arg x=8,y=9,z=10;
	var resultado;
	resultado = (x+y+z)/3;
};
~promedio.value();   //Llamar la función promedio con los argumentos por defecto
)

//Llamar la función promedio con los argumentos por defecto
~promedio.value(5,6,4);

~~~

>Puedes encontrar y ejecutar estos ejemplos abriendo el archivo  *intro_programacion.scd* en SuperCollider


Referencias:

[1] Página oficial de SuperCollider. https://supercollider.github.io/

[2] Taller de SuperCollider Básico. https://basicsupercollider.wordpress.com/clases/clase1/

[3] Coursera. Cristian Bañuelos & Mauro Herrera. Composición algorítmica en Supercollider. Universidad Nacional Autónoma de México

