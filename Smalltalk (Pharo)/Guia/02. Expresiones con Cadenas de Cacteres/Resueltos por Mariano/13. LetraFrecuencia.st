| archivo texto total letra_ingresada |

archivo := 'Archivos txt\martin_fierro.txt' asFileReference.
texto := archivo contents asString trimRight.

letra_ingresada:= ((UIManager default request: 'Ingrese una letra: ') ifNil: [ ^self ]) asLowercase.

((texto last) = $/)
	ifFalse: [ texto:= texto, '/'].

Transcript show: texto, String cr, '----------------------------------------'; cr; flush.
texto:= texto findTokens: Character separators.
Transcript show: texto; cr; flush.
Transcript show: '----------------------------------------'; cr; flush.
Transcript show: letra_ingresada; cr; flush.
Transcript show: '----------------------------------------'; cr; flush.

total:= 0.

texto do: [ :palabra |
	(palabra asLowercase) do: [ :letra |
		((letra asString) = letra_ingresada) ifTrue: [ total:= total + 1 ]
	]
].

Transcript show: total printString; cr; flush.

UIManager default alert: 'La letra aparecio: ', total printString, ' de veces en el texto dado.'
