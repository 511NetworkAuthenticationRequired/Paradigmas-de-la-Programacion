| division |
division:= [ :n :m |
	n < m
		ifTrue: [ 0 ]
		ifFalse: [ 1 + (division value: (n - m) value: m) ]
		].
	
dividendo:= (UIManager default request: 'Ingrese el dividendo:') asInteger.
divisor:= (UIManager default request: 'Ingrese el divisor:') asInteger.

divisor = 0
	ifFalse: [
	UIManager default alert: 
		'El cociente de la division es: ',
	 	(division value: dividendo value: divisor) printString ]
	ifTrue: [ 
		Halt.
		Error new signal: 'No se puede dividir por 0.' ].
