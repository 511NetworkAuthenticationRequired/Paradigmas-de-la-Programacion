| secuencia secuenciaR |

secuencia := (UIManager default request: 'Ingrese un string:') ifNil: [^self].
secuenciaR := secuencia reversed.

secuencia = secuenciaR
	ifTrue: [ UIManager default alert: 'Es un palindromo.' ]
	ifFalse: [ UIManager default alert: 'No es un palindromo.' ]
