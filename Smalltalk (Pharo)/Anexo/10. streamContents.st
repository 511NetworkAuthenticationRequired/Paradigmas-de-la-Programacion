"Dada una frase inicial, quitar las palabras repetidas."

| texto palabras unicas salida |

texto:= 'En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor.'.

palabras:= texto findTokens: Character separators.

unicas:= palabras asOrderedCollection removeDuplicates.

salida := String streamContents: [:s |
    unicas do: [:p | s nextPutAll: p; space ].
].

UIManager default alert: salida trimRight.
