"Dado una frase, devolver las palabras que tengan cantidad par de vocales"

| frase |

frase:= 'Dádó una frase, devolver las palabras que tengan cantidad par de vocales'.

frase:= (frase asLowercase) findTokens: Character separators.

frase do: [ :palabra |
	| total |
	total:= 0.
	palabra do: [ :letra |
		"letra isVowel ifTrue: [ total:= total + 1. ]"
		('aeiouáéíóú' includes: letra) ifTrue: [total:= total + 1]
	].
	((total \\ 2) = 0) ifTrue: [ Transcript show: palabra; cr. ]
].
