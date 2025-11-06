| secuencia contador |

secuencia := (UIManager default request: 'Ingrese un string:') ifNil: [^self].
secuencia := secuencia findTokens: Character separators.
Transcript show: secuencia printString; cr.
contador := 0.

1 to: (secuencia size) do: [ :i |
	((secuencia at: i) allSatisfy: [:p | p isUppercase])
		ifTrue: [ contador:= contador + 1 ]
].

UIManager default alert: 'Cantidad de palabras en mayusculas: ', contador printString.
