| vector n input m flag |

n:= ((UIManager default request: 'Ingrese la cantidad de elementos:') ifNil: [^self]) asInteger.

vector:= Array new: n.
flag:= true.

1 to: n do: [ :i |
	m:= ((UIManager default request: 'Ingrese un numero (n,mm):') ifNil: [ ^self ]) asNumber.
	vector at: i put: m.
	(i = 1)
		ifFalse: [ 
			((vector at: (i - 1)) > m)
				ifTrue: [ 
					UIManager default alert: 'Los numeros no estan ordenados ascendentemente.'.
					flag:= false.
					^self.
				]
		]
].

flag ifTrue: [ UIManager default alert: 'Elos numeros estan ordenados ascendentemente.' ]
