/*
RECORDATORIOS IMPORTANTES
Para correr una línea o ejecutar sonido correr
Control Enter en Windows y GNU/Linux
Comand Enter en Mac

Para detener el sonido
Control Punto en Windows y GNU/Linux
Comand Punto en Mac

*/

s=Server.local
s.boot
s.quit


// =================================================
// 1-Ugens
// ===============================================


//=================================================
// 1.1 Fuentes periodicas: Osciladores
// ===============================================

//------------------------------------------------------
//Con formas de onda geométricas, no limitadas por banda:
//------------------------------------------------------

{LFPar.ar}.scope

{LFCub.ar}.scope
{Impulse.ar}.scope
{Impulse.ar(30)}.scope

{LFSaw.ar}.scope

{LFPulse.ar}.scope

{VarSaw.ar}.scope

{SyncSaw.ar}.scope

{LFTri.ar}.scope
{LFTri.ar (700, 0, 0.3)!2}.scope

//------------------------------------------------------
//Osciladores de banda limitada:
//------------------------------------------------------

//onda senoidal
{SinOsc.ar}.play
{SinOsc.ar (1200, 0, 0.1)}.play
{SinOsc.ar(432, 0 ,0.2)}.play
{SinOsc.ar (700, 0, 0.1)!2}.play //para crear un stéreo rápidamente:

{FSinOsc.ar}.scope

{Blip.ar}.scope

// onda saw tooth
{Saw.ar (750, 0.1)!2}.scope
{Saw.ar(432,MouseX.kr(0,1),MouseY.kr(-1,1))}.scope

//onda cuadrada
{Pulse.ar (800, 0.2, 0.1) !2}. scope
{Pulse.ar(210,MouseX.kr(0,1))}.scope


//Klang - sine oscillator bank
{ Klang.ar(`[ {exprand(400, 2000)}.dup(16), nil, nil ], 1, 0) * 0.04 }.scope(1);




/*
Proyecto Nencatacoa
Laydi Viviana Bautista
Grupo GNU/Linux Universidad Distrital GLUD


Fuente:

--------------------------------------------
Composición algorítmica con SuperCollider
Cristian Bañuelos
Mauro Herrera
---------------------------------------------

*/

