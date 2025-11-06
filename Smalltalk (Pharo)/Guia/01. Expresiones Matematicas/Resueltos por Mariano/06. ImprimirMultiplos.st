| multiplo z c |

z:= (UIManager default request: 'Ingrese un numero.' ) asInteger.
c:= (UIManager default request: 'Ingrese el rango.' ) asInteger.

multiplo:= [ :n :m |
	n > m
		" ifTrue: [ ^ UIManager default alert: 'Fin del ciclo, revisar transcript.' ] "
		ifTrue: [ nil ]
		ifFalse: [
			(n \\ z) = 0
				ifTrue: [ Transcript show: n printString , ' es multiplo'; cr. ].
				(multiplo value: (n + 1) value: m)
			 ]
	 ].

multiplo value: 1 value: c.
UIManager default alert: 'Fin del ciclo, revisar Transcript.'.
