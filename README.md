# Avances pag. 21 - pag. 27 
## Abraham Jhared Flores Azcona, 19211640

## Listado de ejercicios
- Ejercicio 1.3
- Ejercicio 1.4 (fuente en el repo)
- Ejercicio 1.5 (fuente en el repo)
- Ejercicio 1.6
- Ejercicio 1.7

## Resultado *a priori* de los ejercicios

### Ejercicio 1.3
![Tabla1 3](https://user-images.githubusercontent.com/99265478/162116273-854de753-4f55-4760-865e-006573fc4c71.png)

#### Evidencia
![image](https://user-images.githubusercontent.com/99265478/162122818-47f8412a-7b02-48b5-a43d-962818927656.png)

#### Comentarios
Para poder entender de mejor manera todos los ejercicios, decidí hacerlos a mano para tener la idea mas clara
y considero que me funcionó ya que el repetir la lectura de las isntrucciones me facilita entender que hacen
los códigos como el de esta actividad.

Debido a que ya se provian otros comentarios de antemano, no hubo problema en entender que hacia cada linea. Los resultados
obtenidos fueron algo esperados, a excepción del copmlemento de dos, que creía que el útimo bit de todos era el signo...
---

### Ejercicio 1.4
| Bandera | N | Z | C | V |
|---------|---|---|---|---|
| **Valor**   | **1** | **0** | **0** | **0** |

#### Evidencia
![image](https://user-images.githubusercontent.com/99265478/162118209-4011c532-599f-4a5d-ae94-fd90f0c6f49b.png)

#### Comentarios
Debido a que se usa un código similar al ejercicio anterior, la comprensión del problema sucedió sin problema.
El verdadero detalle recae en mostrar y manejar el gdb para navegar los registros; en este aco aquel del cspr
para obtener los valores de las banderas muy útiles en éste estilo programatico.
---

### Ejercicio 1.5
![Tabla1 5](https://user-images.githubusercontent.com/99265478/162116290-7a4a67e3-d858-497e-9f83-6724c6c8f83f.png)

#### Evidencia
![image](https://user-images.githubusercontent.com/99265478/162119127-e8ac4ed7-566a-4c03-8501-a79b9fcc6ec7.png)

#### Comentarios
Comparado a los dos anteriores, este solo se agregan las operaciones logicas en bits, las cuales ya se trabajaron
en primer semestre con la materia de Matemáticas Discretas. Debido a que se solicita el valor de un registro específico,
el saber manejar el gdb permite avanzar sin mas preámbulos. Cabe destacar que los resultados calculados a mano coincidieron
con los arrojados por el gdb.
---

### Ejercicio 1.6
![Tabla1 6](https://user-images.githubusercontent.com/99265478/162116308-b7fd16dd-1eed-49d9-a74d-f733489e62fa.png)

#### Evidencia
![image](https://user-images.githubusercontent.com/99265478/162119742-d227088a-86f2-4da4-bc72-93e10bad6ef3.png)

#### Comentarios
Similar a los anteriores, se necesita naegar en gdb para desplegar lo indicado. Para ilustrar de mejor manera lo
solicitado, podemos formatear los valores de los registros para desplegarlos en la base o formato necesario. Los
valores que se extienden como hexadecimales terminan acaparando hasta 32 bits de memoria, por lo que su
representación binaria es algo descabellada.
---

### Ejercicio 1.7
![Tabla1 7](https://user-images.githubusercontent.com/99265478/162116313-90dce486-9d4a-441f-a89a-8a6f5be784fc.png)

#### Evidencia
![image](https://user-images.githubusercontent.com/99265478/162120304-39dfe805-7490-47df-beb5-2a3606cc16e0.png)

#### Comentarios
Los resultados previos coincidieron con los analizados con el gdb.
---

## Conclusión
La práctica intensiva de estos ejercicios permite entender los mecanismos que manejan los lenguajes ensamblador; en este caso ARM32.
Recomendaría que la información complementaria se buscara en internet para no batallar con la falta de fuentes y sobre todo,
la presentación de la información, que inclusive en inglés puede ser algo batallosa para discernir.

De todos modos, la experiencia de aprender a manejar estas herramientas mejora nuestro razonamiento de programación para aplicarlo en otras materias.
