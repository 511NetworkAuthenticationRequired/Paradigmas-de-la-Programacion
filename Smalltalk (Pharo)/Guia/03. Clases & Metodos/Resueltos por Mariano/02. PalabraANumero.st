" NO use clases ni metodos, hice este para practicar otras cosas "
| numero unidad decena centena unidades decenas centenas detectarIrregulares verificar |

" No tiene control de errores, por lo que si ingresas palabras que NO sean de tres digitos o ingresas mal no va a funcionar "

numero := (((UIManager default request: 'Ingrese un numero en palabra de TRES digitos.') ifNil: [^UIManager default alert: 'No se ingreso ningun numero, intente nuevamente.']) asLowercase).
Transcript show: numero; cr; flush.

numero := numero findTokens: Character separators, 'y'.
Transcript show: numero.

centenas := Dictionary newFrom: {
   'cien' -> 100. 
	'ciento' -> 100.
   'doscientos' -> 200. 
	'trescientos' -> 300.
 	'cuatrocientos' -> 400.
   'quinientos' -> 500. 
	'seiscientos' -> 600. 
	'setecientos' -> 700.
   'ochocientos' -> 800. 
	'novecientos' -> 900 
}.

decenas := Dictionary newFrom: {
   'diez' -> 10. 
	'once' -> 11.
	'doce' -> 12.
	'trece' -> 13.
	'catorce' -> 14.
	'quince' -> 15.
	'veinte' -> 20. 
	'treinta' -> 30. 
	'cuarenta' -> 40.
   'cincuenta' -> 50. 
	'sesenta' -> 60. 
	'setenta' -> 70.
   'ochenta' -> 80. 
	'noventa' -> 90.
}.

unidades := Dictionary newFrom: {
   'uno' -> 1. 
	'dos' -> 2. 
	'tres' -> 3. 
	'cuatro' -> 4. 
	'cinco' -> 5.
   'seis' -> 6. 
	'siete' -> 7. 
	'ocho' -> 8. 
	'nueve' -> 9 
}.

verificar := [ :n | 
	(n beginsWith: ('veinti'))
		ifTrue: [ 20 + (unidades at: (n copyFrom: 7 to: n size) ifAbsent: [0]) ]
		ifFalse: [
			(n beginsWith: ('dieci'))
				ifTrue: [ 10 + (unidades at: (n copyFrom: 6 to: n size) ifAbsent: [0]) ]
				ifFalse: [ (decenas at: (n) ifAbsent: [0]) ]
		]
].

(numero size) caseOf: {
   [1] -> [ UIManager default alert: (centenas at: (numero at: 1) ifAbsent: [0]) printString ].
   [2] -> [ UIManager default alert: (((centenas at: (numero at: 1) ifAbsent: [0]) + (verificar value: (numero at: 2))) printString)].
   [3] -> [ UIManager default alert: (((centenas at: (numero at: 1) ifAbsent: [0]) + (decenas at: (numero at: 2) ifAbsent: [0]) + (unidades at: (numero at: 3) ifAbsent: [0])) printString) ] 
} otherwise: [ UIManager default alert: 'No reconocido' ].
