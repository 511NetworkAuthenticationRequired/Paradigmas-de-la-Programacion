"Dada una frase y un substrings (no precisamente una palabra, puede ser una palabra incompleta), obtener la posición donde inicia dicho substrings. En caso de no encontrar devolver 0 y de haber más de dos solo tomar el primero."

| texto substring posicion |

texto:= 'En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor.'.

substring:= UIManager default request: 'Ingrese un substring.'.

posicion:= texto findString: substring startingAt: 1.

posicion = 0
	ifTrue: [ UIManager default alert: '0' ]
	ifFalse: [ UIManager default alert: posicion printString ].
