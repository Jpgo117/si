    @@
    @@ Instituto Tecnologico de Tijuana
    @@ Depto de Sistemas y Computación
    @@ Ing. En Sistemas Computacionales
    @@
    @@ Autor : Abraham Jhared Flores Azcona @nickname NotsoJharedtrollOx17
    @@ Repositorio: http://github.com/tectijuana/bavancep21-27-NotsoJharedtrollOx17
    @@ Fecha de revisión: 08/04/2022
    @@
    @
    @ Objetivo del programa:
    @    Este programa es una simple suma de los valores iniciados en data. donde
    @    se interpretan como enteros con signo. Debido a ser una operacion
    @    sencilla, el entender los pasos es muy simple ya que el resto es detalles
    @    de direcciones de los registros mismos y la actualizacion de las banderas
    @    que puede apreciarse de mejor manera por medio del gdb.
    @
    @Entradas, procesos y salidas:
    @   ARM32
    @
    @ Errores a reportar / retroalimentar
    @  
    @  Ninguno
    @

@ SOLUTION IN C++
@//librería auxiliar
@#include <stdio.h>
@
@int main ()
@{
@   //variables auxiliares y su init
@   unsigned int var1 = 0b00110010;
@   unsigned int var2 = 0b11000000;
@   int r0 = (int)var1 + (int)var2;
@
@   //banderas
@   unsigned short n = 0b0000;
@   unsigned short z = n;
@   unsigned short c = z;
@   unsigned short v = c;
@
@   //impresión del resultado
@   printf("%d", r0);
@   
@   //calculo de banderas en el fondo
@   if (r0<0)
@       n = 1;
@   if (r0==0)
@       z = 1;
@   if (r0 > 0xFFFFFFFF)
@       c = 1;
@   if (r0 >  2,147,483,647 | tst < -2,147,483,648)
@       v = 1;
@
@   return 0;
@}

@ DATA SECTION

.data

var1:	.byte	0b00110010 @ 0d50, 0x32
	.align
var2:	.byte	0b11000000 @ 0d192, 0xC0
	.align

@CODE SECTION

.text
.global main

main:	ldr	r1, =var1  @carga la direccion de var1 en r1
	ldrsb	r1, [r1]   @guarda el valor de esa direccion como int con signo
			   @ 0d50 -> 0d50
	ldr	r2, =var2  @... var2 en r2
	ldrsb	r2, [r2]   @...
                           @ 0d192 -> -0d64
	adds	r0, r1, r2 @la suma de r1 y r2 se almacena en r0 y las banderas cambian
			   @ r1 + r2 = r0; r0 = -14
	bx	lr         @exepcion para salir del programa

