"Dada una frase inicial, un parámetro a cambiar y otro por el cual se quiere cambiar, obtener la frase final con dicho cambio. Ej: ‘Hola Mundo Cruel’ cambiar:‘u’ por:’x’ ->’Hola Mxndo Crxel’"

| sec sec_s x y |

sec:= 'En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor.'.

" En este caso yo distingo mayusculas de minusculas (por ejemplo: 'H' <> 'h'). Esto se soluciona fácil con asLowerCase si se quiere"

x:= (UIManager default request: 'Ingrese UN parametro que desea cambiar') first.
y:= (UIManager default request: 'Ingrese UN parametro para que reemplace a ', x asString) first.

sec_s := sec collect: [ :c | 
	(c = x) 
		ifTrue: [ y ] 
		ifFalse: [ c ]
].

UIManager default alert: sec_s printString.
