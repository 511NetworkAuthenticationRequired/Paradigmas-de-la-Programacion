| secuencia1 secuencia2 secuenciaS mayor j |

secuencia1 := (UIManager default request: 'Ingrese un string:') ifNil: [^self].
secuencia2 := (UIManager default request: 'Ingrese un string:') ifNil: [^self].
secuenciaS := ''.

1 to: ((secuencia1 size) min: (secuencia2 size)) do: [ :i |
	j:= i.
	secuenciaS:= secuenciaS, (secuencia1 at: i) asString, (secuencia2 at: i) asString.
].

((secuencia1 size) = (secuencia2 size))
	ifFalse: [ 
		(secuencia1 size > secuencia2 size)
			ifTrue: [ mayor:= secuencia1 ]
			ifFalse: [ mayor:= secuencia2 ].
		(j + 1) to: ((secuencia1 size) max: (secuencia2 size)) do: [ :i | 
			secuenciaS:= secuenciaS, (mayor at: i) asString.
		]
].

UIManager default alert: secuenciaS.
