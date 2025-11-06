"Realizar la carga de enteros positivos sin que se produzcan duplicaciones y en una estructura del tipo array. Cantidad flexible al usuario. Se debe devolver un array."

| vector tamaño z |

tamaño:= (UIManager default request: 'Ingrese el tamaño del array') asInteger.

vector:= Array new: tamaño withAll: 0.

1 to: tamaño do: [ :i |
	z:= 0.
	[z <= 0] whileTrue: [
		z:= (UIManager default request: 'Ingrese un entero positivo') asInteger.
		(vector includes: z) ifTrue: [ 
			UIManager default alert: 'No hagas burplerias, ese entero ya fue cargado.'.
			z:= 0
		]
	].
	vector at: i put: z.
].

Transcript show: vector.
