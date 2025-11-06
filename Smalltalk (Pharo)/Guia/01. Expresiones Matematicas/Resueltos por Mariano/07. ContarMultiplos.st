| tot_2 tot_3 tot_5 tot_7 z s |

tot_2:= 0. tot_3:= 0. tot_5:= 0. tot_7:= 0.

[ 
    s:= (UIManager default request: 'Ingrese un numero (Enter [sin nada, vacio] para terminar):').
    s isEmpty
] whileFalse: [
	z:= s asInteger.
	(z \\ 2) = 0
		ifTrue: [ tot_2:= tot_2 + 1 ].
	(z \\ 3) = 0
		ifTrue: [ tot_3:= tot_3 + 1 ].
	(z \\ 5)	= 0
		ifTrue: [ tot_5:= tot_5 + 1 ].
	(z \\ 7) = 0
		ifTrue: [ tot_7:= tot_7 + 1 ].
].

UIManager default alert:
	'Cantidad de multiplos de 2: ', tot_2 printString, String cr,
	'Cantidad de multiplos de 3: ', tot_3 printString, String cr,
	'Cantidad de multiplos de 5: ', tot_5 printString, String cr,
	'Cantidad de multiplos de 7: ', tot_7 printString, String cr.
