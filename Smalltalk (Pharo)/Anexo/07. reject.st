"Dada una cadena con letras y números, obtener otra cadena que solo tenga letras. Ej: ‘Las1 clase22s 5practicas de p3aradig55mas se v1an 24 complicando’-> ‘Las clases practicas de paradigmas se van complicando’"

| sec sec_s x y |

sec:= 'Las1 clase22s 5practicas de p3aradig55mas se v1an 24 complicando'.

sec_s := sec reject: [ :c | c isDigit ].

UIManager default alert: sec_s printString.
