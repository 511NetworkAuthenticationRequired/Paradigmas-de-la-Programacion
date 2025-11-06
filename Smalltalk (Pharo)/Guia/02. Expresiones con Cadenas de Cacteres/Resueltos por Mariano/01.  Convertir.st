| secuencia secuenciaS |

secuencia := (UIManager default request: 'Ingrese un string:') ifNil: [^self].
secuenciaS := ''.

1 to: (secuencia size) do: [ :i |
	(secuencia at: i) isLowercase
		ifTrue: [ secuenciaS :=  secuenciaS, ((secuencia at: i) asString) asUppercase ]
		ifFalse: [ secuenciaS := secuenciaS, ((secuencia at: i) asString) asLowercase  ]	
].

UIManager default alert: secuenciaS.
