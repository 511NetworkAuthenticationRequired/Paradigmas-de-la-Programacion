"Un número es primo perfecto si y solo si cumple estas 3 condiciones:
1- El número es primo.
2- Cada dígito del número es primo.
3- La suma de todos los dígitos es un número primo.
EJ: 227 -> 227 (es primo), 2 es primo , 7 es primo y la suma de 2 2 y 7 es 11, y este también es
primo.
Determinar si un número ingresado por el usuario es primo perfecto"

| numero suma flag |

numero:= UIManager default request: 'Ingrese un numero.'.
suma:= 0.
flag:= true.

((numero asInteger) isPrime) 
	ifTrue: [ 
		numero do: [ :digito |
			((digito digitValue) isPrime) ifFalse: [ flag:= false. ].
			suma:= suma + (digito digitValue).
		].
		(suma isPrime and: [ flag = true ]) 
			ifTrue: [ UIManager default alert: 'El numero es primo perfecto' ]
			ifFalse: [ UIManager default alert: 'El numero no es primo perfecto' ]
	]
	ifFalse: [ UIManager default alert: 'El numero no es primo perfecto' ]
