| aBinario d |

d := (UIManager default request: 'Ingrese un numero') asInteger ifNil: [^self].

aBinario:= [ :n :b | 
	(n = 0)
		ifTrue: [ b printString ]
		ifFalse: [ aBinario value: (n // 2) value: (b, (n \\ 2) printString) ]
].

aBinario value: d value: ''.
