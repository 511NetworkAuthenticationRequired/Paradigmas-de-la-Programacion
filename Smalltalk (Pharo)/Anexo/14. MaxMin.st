"Dada una lista de números, previamente ingresadas por el usuario, determinar el menor y mayor número de la lista"

| numero numeros |

numero:= UIManager default request: 'Ingrese los numeros (separados por un espacio).'.

numeros:= numero findTokens: Character separators.

numeros:= numeros collect: [:n | n asInteger ].

Transcript show: 'El numero mayor es: ', (numeros max) asString, ', y el menor es: ', (numeros min) asString.
