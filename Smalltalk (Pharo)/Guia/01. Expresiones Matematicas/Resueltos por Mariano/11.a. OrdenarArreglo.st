" NO pedía esto pero bueno, esto hace un ordenamiento por inserción directa, como ya lo hice lo pongo acá que capaz sirve. "
| vector n input |

n:= ((UIManager default request: 'Ingrese la cantidad de elementos:') ifNil: [^self]) asInteger.

vector:= Array new: n.

1 to: n do: [ :i |
     vector at: i put: ((UIManager default request: 'Ingrese un número:') ifNil: [ ^self ]) asInteger.
].

2 to: n do: [ :i |
    | j aux |
    aux := vector at: i.
    j:= i - 1.
    [(j > 0) and: [aux < (vector at: j)]] whileTrue: [
        vector at: (j + 1) put: (vector at: j).
        j:= j - 1.
    ].
    vector at: (j + 1) put: aux.
].

UIManager default alert: 'Vector ordenado: ', vector asString.

