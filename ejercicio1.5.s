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
    @    Mostrar las tres operaciones basicas empleadas en los bits: AND, OR y NOT, asi
    @    asi como mostrar otras maneras de modificar banderas y de iniciar valores di-
    @    rectamente en los registros. Similar al 1.4, la ayuda del db permite observar
    @    los cambios en las banderas correspondientes.
    @
    @ Entradas, procesos y salidas:
    @   ARM32
    @
    @ Errores a reportar / retroalimentar
    @   Ninguno
    @

@SOLUTION IN C++
@//libreria auxiliar
@#include <stdio.h>
@
@int main() {
@
@   //variables auxiliares y sus valores iniciales
@   unsigned int r2 = 0b11110000;
@   unsigned int r3 = 0b10101010;
@   unsigned int tst = 0b00000000;
@
@   //banderas
@   unsigned short n = 0b0000;
@   unsigned short z = n;
@   unsigned short c = z;
@   unsigned short v = c;
@   
@   //operaciones del main
@   unsigned int r0 = r2 & r3;
@   unsigned int r1 = r2 | r3;
@   unsigned int r4 = ~r0;
@
@   //despliegue de registros resultado
@   printf("%d\n",r0); //AND
@   printf("%d\n",r1); //OR
@   printf("%d\n",r4); //NOT r0
@
@   //tst 1: r0, #0x80000000
@   r0 = 0x8000000;
@   tst = r0 | r0;
@
@   if (tst<0)
@       n = 1;
@   if (tst==0)
@       z = 1;
@   if (tst > 0xFFFFFFFF)
@       c = 1;
@   if (tst >  2,147,483,647 | tst < -2,147,483,648)
@       v = 1;
@
@   //RESET OF FLAGS
@   n = 1;
@   z = n;
@   c = z;
@   v = c;
@
@   //tst 2: r0, #0x40000000
@   tst = r0 | 0x40000000;
@
@   if (tst<0)
@       n = 1;
@   if (tst==0)
@       z = 1;
@   if (tst > 0xFFFFFFFF)
@       c = 1;
@   if (tst >  2,147,483,647 | tst < -2,147,483,648)
@       v = 1;
@
@   return 0;
@}

@ CODE SECTION
.text
.global main

main:	mov	r2,	#0b11110000	@asignacion de valores binarios para r2 y r3
	mov	r3, 	#0b10101010	@...
	and	r0, r2, r3		/* r0 <- r2 AND r3 */
	orr	r1, r2, r3		/* r1 <- r2 OR r3 */
	mvn	r4, r0			/* r4 <- NOT r0 */
	mov	r0,	#0x80000000     @se reescribe r0 con 0x80000000
	tst	r0,	#0x80000000     @ r0 AND 0x8000000 y cambia las flags acorde a
	tst	r0,	#0x40000000     @ r0 AND 0x4000000 ...
	bx	lr			@ excepcion para salir del programa
