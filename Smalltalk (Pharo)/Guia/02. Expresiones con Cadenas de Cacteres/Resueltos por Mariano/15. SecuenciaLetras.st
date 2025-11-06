 " por ejemplo se puede ingresar 'es', que va a devolver 6 "
| archivo texto letra1 letra2 letras total auxiliar |

archivo := 'Archivos txt\hudson.txt' asFileReference.
texto := archivo contents asString trimRight.

letra1:= ((UIManager default request: 'Ingrese la primer letra') ifNil: [^self]) first. " el first fuerza a devolver un caracter, y siempre es el primero que se inserta (de izquierda a derecha) "
letra2:= ((UIManager default request: 'Ingrese la segunda letra') ifNil: [^self]) first.

((letra1 isLetter) and: [ letra2 isLetter ])
	ifTrue: [ letras:= (letra1 asString, letra2 asString)]
	ifFalse: [ ^UIManager default alert: 'Debes ingresar LETRAS.' ].

Transcript show: letras; cr; flush.

texto := texto findTokens: Character separators.

total:= 0.

texto do: [ :palabra |
	palabra withIndexDo: [ :letra :i |
		((i + 1) > (palabra size))
		ifFalse: [
			auxiliar := (palabra at: (i + 1)).
			(((letra asString, auxiliar asString)) = letras)
				ifTrue: [ total := total + 1 ]
		]
	]
].

UIManager default alert: 'La secuencia de letras ', letras printString, ' aparece una cantidad de ', total printString, ' veces.'
