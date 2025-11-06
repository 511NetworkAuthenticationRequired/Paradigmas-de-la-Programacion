"Dado un texto, devolver en forma de colección ordenada según el tamaño de la palabra."

| texto |

texto:= 'El universo es un vasto oceano de posibilidades'.

Transcript show: texto; cr.

texto:= texto findTokens: Character separators.

texto:= texto asSortedCollection: [ :a :b | a size < b size ].

Transcript show: texto.
