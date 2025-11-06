| secuencia letra contador |

secuencia := (UIManager default request: 'Ingrese un string:') ifNil: [^self].
secuencia := (secuencia asLowercase) findTokens: Character separators.

letra := (UIManager default request: 'Ingrese una letra') ifNil: [^self].
letra := letra asLowercase.

Transcript show: secuencia printString; cr.
contador := 0.

secuencia do: [ :palabra |
	((palabra last) asString = letra)
		ifTrue: [ contador:= contador + 1 ]
].

UIManager default alert: 'Cantidad de palabras que comienzan con la letra ', letra, ' es: ', contador printString, '.'.
