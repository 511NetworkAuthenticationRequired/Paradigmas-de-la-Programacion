"Dada una lista de enteros, devolver una lista donde el primer elemento sea la suma en absoluto de los negativos. El resto de la lista se compone por los elementos positivos de la lista original."

| listaE listaS suma |

listaE:= #(1 -1 2 -2 3 -3).
suma:= 0.

listaS:= OrderedCollection new.
listaS add: suma.

listaE do: [ :n |
	(n < 0) 
		ifTrue: [ suma:= suma + (n negated) ]
		ifFalse: [ listaS add: n ]
].

listaS at: 1 put: suma.
Transcript show: listaS.
