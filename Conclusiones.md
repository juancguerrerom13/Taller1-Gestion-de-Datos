# Conclusiones

## Grupo: Juan Camilo Guerrero, Maria Camila Rincón, Juan Pablo Marin, Gabriel Camilo Velasquez, Luis Alberto Banda

## Countries y Currencies

### 1. El código ISO Alpha-2 es mejor llave que el nombre, aunque no es perfecta

Por código cruzan **243** registros y por nombre solo **229**, es decir, el nombre pierde 15 países por diferencias de escritura. Aun con el código, queda 1 registro solo en countries y 10 solo en currencies.

Además, el Country Code aparece con nombres distintos en cada tabla: `Cocos [Keeling] Islands` en countries y `Clipperton Island` en currencies. Como el Country Code corresponde a las Islas Cocos, se trata de un error de asignación en el archive de monedas.

*(Celda 17)*

---

## Titanic

### 2. La supervivencia está asociada con la clase, y todavía más con el sexo

| Grupo | Sobrevivió |
|---|---|
| 1.ª clase | 63,0 % |
| 2.ª clase | 47,3 % |
| 3.ª clase | 24,2 % |
| Mujeres | 74,2 % |
| Hombres | 18,9 % |

Sobrevivió el 63,0 % de 1.ª clase, el 47,3 % de 2.ª y el 24,2 % de 3.ª, mientras que por sexo sobrevivió el 74,2 % de las mujeres frente al 18,9 % de los hombres. Es una relación descriptiva, así que no permite atribuir el efecto solo a la clase.

*(Celda 35)*

### 3. Los faltantes de Cabina no son aleatorios

La variable tiene **77,1 %** de nulos, pero la proporción cambia mucho según la clase: 18,5 % en 1.ª, 91,3 % en 2.ª y 97,6 % en 3.ª. La ausencia de cabina refleja la clase del pasajero, por lo que eliminarla haría perder esa información.

*(Celda 31)*

---

## Diabetes

### 4. `Outcome` tiene un desbalance moderado

La clase 0 concentra el **65,1 %** de los registros y la clase 1 el **34,9 %**, una razón de 1,87 a 1. Un clasificador que siempre predijera 0 acertaría el 65,1 % de las veces, por lo que la exactitud sola no sirve para evaluar modelos.

> El umbral para considerarla balanceada (cada clase entre 40 % y 60 %) es un criterio propio.

*(Celda 71)*

### 5. `Glucose` diferencia mejor las clases de `Outcome` que `BMI`

La mediana de `Glucose` sube de 107 en la clase 0 a 140 en la clase 1 (**+30,8 %**), mientras que la de `BMI` pasa de 30,1 a 34,3 (**+14,0 %**). En `Glucose`, además, el Q1 de la clase 1 (119) casi alcanza el Q3 de la clase 0 (125).

> Es una comparación descriptiva de dos variables, sin prueba de significancia.

*(Celda 74)*
