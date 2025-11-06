"Dado un texto, determinar la cantidad de vocales participantes, totalizando solamente las queparticipan."

| texto totales A E I O U |

texto := '¿Hola mundo, qué tal?' asLowercase.

A := #($a $á) asSet.
E := #($e $é) asSet.
I := #($i $í) asSet.
O := #($o $ó) asSet.
U := #($u $ú) asSet.

totales := Dictionary new.

" Uso un diccionario para solo crear una key cuando aparezca una vocal. Si una vocal no aparece no se crea la key, por ende no se totaliza dicha vocal. "

texto do: [ :letra |
	(A includes: letra) ifTrue: [
		totales at: 'A' put: ((totales at: 'A' ifAbsent: [0]) + 1)
	].
	(E includes: letra) ifTrue: [
		totales at: 'E' put: ((totales at: 'E' ifAbsent: [0]) + 1)
	].
	(I includes: letra) ifTrue: [
		totales at: 'I' put: ((totales at: 'I' ifAbsent: [0]) + 1)
	].
	(O includes: letra) ifTrue: [
		totales at: 'O' put: ((totales at: 'O' ifAbsent: [0]) + 1)
	].
	(U includes: letra) ifTrue: [
		totales at: 'U' put: ((totales at: 'U' ifAbsent: [0]) + 1)
	].
].

Transcript show: totales; cr.
