| secuencia contador vocales |

secuencia := (UIManager default request: 'Ingrese un string:') ifNil: [^self].
contador := 0.
vocales := #($a $e $i $o $u) asSet.
Transcript show: secuencia.

1 to: (secuencia size) do: [ :i |
	(vocales includes: (secuencia at: i))
		ifTrue: [ contador:= contador + 1 ]
].

(contador = 0)
	ifTrue: [ UIManager default alert: 'No hay vocales en la cadena ingresada.' ]
	ifFalse: [  UIManager default alert: 'Hay ', contador printString, ' vocales en la cadena ingresada.' ]
