"Diseñar un algoritmo que permita encontrar un grupo de NÚMEROS SOCIABLES. Los números sociables, cumplen con la misma condición que los números amigos, pero en vez de ir en parejas van en grupos más grandes. La suma de los divisores del primer número da el segundo, la suma de los del segundo da el tercero, y así sucesivamente. La suma de divisores del último da el primer número de la lista. Por ejemplo los números 12496,14288,15472,14536,14264"

| numeros suma flag |

numeros:= UIManager default request: 'Ingrese los numeros separados por un espacio'.
numeros:= numeros findTokens: Character separators.
numeros:= numeros select: [ :c | c isAllDigits]. 
numeros:= numeros collect: [ :c | c asInteger ].

Transcript show: numeros; cr.
flag:= true.

numeros withIndexDo: [ :numero :i |
	suma:= 0.
	1 to: (numero - 1) do: [ :j |
		((numero \\ j) = 0) ifTrue: [ suma:= suma + j ]
	].
	(i = numeros size) 
		ifTrue: [ 
			(suma = (numeros first)) ifFalse: [ flag:= false ]
		]
		ifFalse: [ 
			(suma = (numeros at: (i + 1))) ifFalse: [ 
				flag:= false.
			]
		].
	Transcript show: suma asString; cr.
].

" No se porque crasheaba al tipear en la v8 asique agregando esta uiltima parte en la v14 "

flag 
ifTrue: [ UIManager default alert: 'Los numeros son sociables' ]
ifFalse: [ UIManager default alert: 'No son sociables los numeros. ' ]
