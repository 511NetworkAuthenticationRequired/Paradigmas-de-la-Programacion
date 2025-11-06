| multiplicacion |
multiplicacion:= [ :n :m |
	m = 0
		ifTrue: [ 0 ]
		ifFalse: [  n + (multiplicacion value: n value: (m - 1)) ] 
	].
	
multiplicando:= (UIManager default request: 'Ingrese el multiplicando:') asInteger.
multiplicador:= (UIManager default request: 'Ingrese el multiplicador:') asInteger.
	
UIManager default alert: 
	'El resultado de la multiplicacion es: ',
 	(multiplicacion value: multiplicando value: multiplicador) printString.
