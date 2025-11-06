"Definir todos los métodos que considere necesario, tal que dada una lista de cadenas, y otra lista de enteros, devuelva la lista de aquellas cadenas cuya longitud coincide con el entero correspondiente en la segunda lista"

| listaC listaE listaS |

listaC:= UIManager default request: 'Inrese los strings (separados por espacio)'.
listaE:= UIManager default request: 'Ingrese los numeros (separados por espacio)'.

listaC:= listaC findTokens: Character separators.
listaE:= listaE findTokens: Character separators.
listaE:= listaE collect: [ :e | e asInteger ].
listaS:= OrderedCollection new.

((listaC size) = (listaE size)) ifTrue: [ 
	listaC withIndexDo: [ :s :i |
		((s size) = (listaE at: i)) ifTrue: [ 
			listaS add: s.
		]
	]
].

Transcript show: listaS.
