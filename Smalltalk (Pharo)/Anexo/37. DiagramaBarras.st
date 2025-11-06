"dado una frase ingresada por el usuario, generar con el Transcript un diagrama en barra como el siguiente donde aparecen las frecuencias de las vocales en la frase."

| frase vector |

frase:= 'Me llamo Burpla, soy argentino y me gusta jugar e ir afuera con amigos la re vivo. Mi waifu esta en españa D: tratando de sacarme de latinoamerica' asLowercase.

vector:= Array new: 5 withAll: 0.

frase do: [ :v |
	(v = $a or: [ v = $á ]) ifTrue: [ vector at: 1 put: ((vector at: 1) + 1) ].
	(v = $e or: [ v = $é ]) ifTrue: [ vector at: 2 put: ((vector at: 2) + 1) ].
	(v = $i or: [ v = $í ]) ifTrue: [ vector at: 3 put: ((vector at: 3) + 1) ].
	(v = $o or: [ v = $ó ]) ifTrue: [ vector at: 4 put: ((vector at: 4) + 1) ].
	(v = $u or: [ v = $ú ]) ifTrue: [ vector at: 5 put: ((vector at: 5) + 1) ]
].

Transcript
	show: 'A| ', (String new: (vector at: 1) withAll: $*); cr;
  show: 'E| ', (String new: (vector at: 2) withAll: $*); cr;
  show: 'I| ', (String new: (vector at: 3) withAll: $*); cr;
  show: 'O| ', (String new: (vector at: 4) withAll: $*); cr;
	show: 'U| ', (String new: (vector at: 5) withAll: $*); cr.
