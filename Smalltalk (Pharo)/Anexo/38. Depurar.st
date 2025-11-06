"Definir un método tal que dado un texto y una lista de caracteres, retome el texto depurado, sin repeticiones consecutivas de los caracteres dados. EJ: depura ‘hola,,, todo bien,,, y uds..?????’ [‘,’,’ ’,’.’,’?’] Devuelve: ‘hola, todo bien, y uds.?’"

| texto lista depurar anterior flag |

"texto:= 'hola,,, todo bien,,, y uds..?????'.
lista:= #($, $. $? $ )."

texto:= UIManager default request: 'Ingrese un texto.'.
lista:= OrderedCollection new.
flag:= 0.

[ flag = 0 ] whileTrue: [
	lista add: ((UIManager default request: 'Ingrese un caracter.') first).
	(UIManager default confirm: '¿Quiere seguir ingresando caracteres?')
		ifFalse: [ flag:= 1 ]
].

anterior:= ''.
		
depurar:= [ :t : l | " texto lista "
	String streamContents: [ :salida |
		t do: [ :letra |
			((letra = anterior) and: [ l includes: letra ]) ifFalse: [ salida nextPut: letra ].
			anterior:= letra.
		]
	]
].

Transcript show: (depurar value: texto value: lista).
