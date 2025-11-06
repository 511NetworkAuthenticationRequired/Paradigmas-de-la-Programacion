| esPerfecto z resultado|

z:= (UIManager default request: 'Ingrese un numero.') asInteger.

esPerfecto:= [ :n :suma |
	n = 0
		ifTrue: [ suma ]
		ifFalse: [ 
			(z \\ n) = 0
				ifTrue: [ esPerfecto value: (n - 1) value: suma + n ]
				ifFalse: [ esPerfecto value: (n - 1) value: suma ]
				]
	].

resultado:= esPerfecto value: (z - 1) value: 0.

(resultado = z)
    ifTrue: [ UIManager default alert: 'El número es perfecto.' ]
    ifFalse: [ UIManager default alert: 'El número no es perfecto.' ].
