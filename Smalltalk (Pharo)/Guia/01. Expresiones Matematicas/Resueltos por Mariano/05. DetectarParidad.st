| z |

z:= (UIManager default request: 'Ingrese un numero.' ) asInteger.

(z \\ 2) = 0
	ifTrue: [ UIManager default alert: 'El numero ingresado es par.' ]
	ifFalse: [ UIManager default alert: 'El numero ingresado es impar.'].
