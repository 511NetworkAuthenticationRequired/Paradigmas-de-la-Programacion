"Dado un string de entrada, listar en el transcript cada palabra invirtiendola"

| sec |

sec:= 'En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor.'.

sec:= sec findTokens: Character separators, '.¿?,;:¡!-()[]'.

"Transcript show: sec; cr."

sec withIndexDo: [ :pal :i |
	Transcript show: i asString, '.', pal reverse; cr
].
