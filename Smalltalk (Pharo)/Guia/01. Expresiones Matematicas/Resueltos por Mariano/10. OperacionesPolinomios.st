| crear polinomio1 polinomio2 crearPolinomioS polinomioS crearPolinomioM polinomioM imprimir |

Transcript clear.

crear:= [ 
    | grado polinomio |
    grado := (UIManager default request: 'Ingrese el grado del polinomio.') asInteger.
    polinomio := Array new: (grado + 1). 
    1 to: (grado + 1) do: [ :i |
        polinomio at: i put: ((UIManager default request: 'Ingrese coeficiente de x^', (i - 1) printString) asInteger).
    ].
    polinomio
].

crearPolinomioS:= [ :n :m |
    | d mayor menor |
    mayor:= (n size) max: (m size).
    menor:= (n size) min: (m size).
    polinomioS:= Array new: (mayor).
    d:= mayor - menor. 
    1 to: d do: [ :i |
        polinomioS at: i put: (n at: i)
    ].
    (d + 1) to: mayor do: [ :j |
    		polinomioS at: j put: ((n at: j) + (m at: (j - d))).
    ].
    polinomioS.
].

crearPolinomioM := [ :n :m |
    polinomioM := Array new: ((n size) + (m size) - 1) withAll: 0.
    
    1 to: n size do: [ :i |
        1 to: m size do: [ :j |
            polinomioM at: (i + j - 1) put: ((polinomioM at: (i + j - 1)) + ((n at: i) * (m at: j))).
        ].
    ].
    polinomioM
].

UIManager default alert: 'POLINOMIO 1.'.
polinomio1:= crear value.
UIManager default alert: 'POLINOMIO 2.'.
polinomio2:= crear value.
Transcript show: polinomio1 printString, String cr, polinomio2 printString; cr; flush.

Transcript show: String cr.

((polinomio1 size) = (polinomio2 size))
    ifTrue: [  
        polinomioS:= Array new: (polinomio1 size).
        1 to: (polinomio1 size) do: [ :i | 
        polinomioS at: i put: ((polinomio1 at: i) + (polinomio2 at: i)).
        Transcript show: (polinomioS at: i) printString, String cr.
        ]]
    ifFalse: [ 
        ((polinomio1 size) > (polinomio2 size))
            ifTrue: [ 
					polinomioS:= crearPolinomioS value: polinomio1 value: polinomio2.
					polinomioM:= crearPolinomioM value: polinomio1 value: polinomio2
				]
            ifFalse: [ 
					polinomioS:= crearPolinomioS value: polinomio2 value: polinomio1. 
					polinomioM:= crearPolinomioM value: polinomio1 value: polinomio2
				].
    ].

Transcript show: 'Suma: ', polinomioS printString ; cr; flush.
Transcript show: 'Producto: ', polinomioM printString, String cr; flush.

imprimir:= [ :n |
	| polinomio |
	polinomio:= ''.
	1 to: (n size) do: [ :i |
		(i = (n size))
			ifTrue: [ polinomio:=  polinomio, (n at: i) printString ]
			ifFalse: [ 
				(i = 1)
					ifTrue: [ polinomio:= polinomio, (n at: i) printString, 'x + ' ]
					ifFalse: [ polinomio:= polinomio, (n at: i) printString , 'x^', i printString, ' + ' ]
				]	
	].
	polinomio.
].

UIManager default alert: 'Suma de los polinomios: ', (imprimir value: polinomioS).
UIManager default alert: 'Producto de los polinomios: ', (imprimir value: polinomioM).

" Se podrían simplificar varias cosas pero... no hay que arreglar lo que no esta roto(? "
