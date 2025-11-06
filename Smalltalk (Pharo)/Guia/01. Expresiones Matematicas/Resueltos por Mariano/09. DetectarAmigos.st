| Suma a b |

a:= (UIManager default request: 'Ingrese un numero.') asInteger.
b:= (UIManager default request: 'Ingrese otro numero.') asInteger.

Suma:= [ :n |
    | m |
    m := 0.
    1 to: (n // 2) do: [ :i |
        (n \\ i) = 0 
			ifTrue: [ m:= m + i ].
    ].
    m
].

Transcript show: (Suma value: a); cr.
Transcript show: (Suma value: b); cr.

((Suma value: a) = b and: (Suma value: b) = a)
	ifFalse: [ UIManager default alert: 'Los numeros no son amigos.' ]
	ifTrue: [ UIManager default alert: 'Los numeros son amigos.' ]
	

" BONUS: Para evaluar numeros prometidos basta con cambiar la verificacion final, es decir: ((Suma value: a) = (b + 1) and: (Suma value: b) = (a + 1)) "
