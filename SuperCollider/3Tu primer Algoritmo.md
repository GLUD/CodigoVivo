
#Crea tus algoritmos


Los paréntesis son una parte vital de la redacción de código en SuperCollider. Se usan varios tipos de paréntesis: { agrupa funciones }, ( agrupa expresiones ), [ agrupa arrays o colecciones ].

Los scripts de SC se corren por líneas o bloques de código. Para ejecutar una línea o bloque se debe poner el cursor en esa línea y presionar *Control + enter *. Si queremos detenerlo presionamos *Control + punto*


Al  escribir  un  script  de  SuperCollider  es  importante  que  a  nuestros  archivos tengan  la   extensión   **.scd**   de   lo   contrario,   no   se   abrirán correctamente en el programa.


##Integrar otros sonidos

SC  sólo   puede   abrir   archivos descomprimidos  como  *.wav*  y  *.aiff* y además, debemos  colocar  los  archivos  en  la  misma  carpeta  donde  se encuentre grabado nuestro script.








Hay tres relojes en SC para controlar

1. SystemClock. Cuenta el tiempo desde que la computadora se empezo a ejecutar y lo toma como referencia para agendar la acción, sin embargo no controla las GUI, es preciso
2. atclocl. No es preciso pero permite la interacción con una interfaz grafica	
3. TempoClock.  es un reloj especial que opera por Pulsaciones por segundos, al iniciar SC se lanza un tempoClock por defecto


Los dos primeros implementan un modelo de tiempo basado en la unidade del seguno 



Fuentes:

[1] Página oficial de SuperCollider. https://supercollider.github.io/

[2] Taller de SuperCollider Básico. https://basicsupercollider.wordpress.com/clases/clase1/