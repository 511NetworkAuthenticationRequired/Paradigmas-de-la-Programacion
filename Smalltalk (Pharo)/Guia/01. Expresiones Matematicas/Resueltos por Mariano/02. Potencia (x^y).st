| potencia |
potencia:= [ :x :y |
	y = 0
		ifTrue: [ 1 ]
		ifFalse: [ x * (potencia value: x value: (y - 1)) ]
	 ].

UIManager default inform: 'El formato es x^y.'.
x:= (UIManager default request: 'Ingrese x') asInteger.
y:= (UIManager default request: 'Ingrese el y') asInteger.
	
y < 0
	ifTrue: [ 
		Halt.
		Error new signal: 'El exponente no puede ser negativo.'
	 ]
	ifFalse: [  
		UIManager default alert: 
		'El resultado de x^y es:', (potencia  value: x value: y) printString.
	].
