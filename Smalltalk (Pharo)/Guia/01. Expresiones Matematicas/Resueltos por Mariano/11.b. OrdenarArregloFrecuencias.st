| vector n input diccionario |

n:= ((UIManager default request: 'Ingrese la cantidad de elementos:') ifNil: [^self]) asInteger.

vector:= Array new: n.

1 to: n do: [:i |
     vector at: i put: ((UIManager default request: 'Ingrese un número:') ifNil: [ ^self ]) asInteger.
].

diccionario:= Dictionary new.
vector do: [ : i |
    diccionario at: i ifAbsentPut: [0].
    diccionario at: i put: ((diccionario at: i) + 1).
].

2 to: n do: [ :i |
	| j aux |
	aux := vector at: i.
	j:= i - 1.
	[(j > 0) and: [
		((diccionario at: aux) > (diccionario at: (vector at: j)))  or: [ ((diccionario at: aux) = (diccionario at: (vector at: j))) and: [aux < (vector at: j)] 
		].
	]] whileTrue: [
		vector at: (j + 1) put: (vector at: j).
		j:= j - 1.
	].
	vector at: (j + 1) put: aux.
].

UIManager default alert: 'Vector ordenado por frecuencias: ', vector asString.
