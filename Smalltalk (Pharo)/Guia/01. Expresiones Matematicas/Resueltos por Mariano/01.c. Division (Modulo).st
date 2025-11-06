| division |
division:= [ :n :m |
	n = 0
		ifTrue: [ 0 ]
		ifFalse: [ m - (division value: (n - 1) value: m) ]
		].
	
dividendo := (UIManager default request: 'Ingrese el dividendo:') asInteger.
divisor := (UIManager default request: 'Ingrese el divisor:') asInteger.

UIManager default alert: 
	'El cociente de la division es: ',
 	(division value: dividendo value: divisor) printString.
