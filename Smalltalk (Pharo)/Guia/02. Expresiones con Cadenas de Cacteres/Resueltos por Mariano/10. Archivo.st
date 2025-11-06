| archivo texto longitud contadorA totalA mayor  auxiliar |

archivo := 'Archivos txt/hudson.txt' asFileReference. " <-- aca va la ruta REAL del archivo "
texto := archivo contents.

Transcript show: texto; cr; flush.
UIManager default alert: texto printString.

contadorA:= 0. totalA:= 0. mayor:= 0. auxiliar:= ''.

(texto asString asLowercase findTokens: (Character separators , ',.!?;:()[]')) withIndexDo: [ :palabra :i |
	((8 to: 16) includes: (palabra size)) "punto c"
		ifTrue: [ 
			contadorA := (palabra select: [:c | c = $a]) size.
			(contadorA > 2) ifTrue: [ totalA:= totalA + 1 ]
		].
		(palabra size) > mayor ifTrue: [ "punto a"
			mayor:= palabra size.
			Transcript show: palabra.
			auxiliar:= palabra.
		]	
].

UIManager default alert: 
    'Longitud del texto: ', texto size printString, String cr, "punto b"
    'Cantidad de palabras con longitud entre 8 y 16 y más de 2 "a": ', totalA printString, String cr,
	'La posición inicial de la palabra mas larga es: ', (texto indexOfSubCollection: auxiliar) printString.
