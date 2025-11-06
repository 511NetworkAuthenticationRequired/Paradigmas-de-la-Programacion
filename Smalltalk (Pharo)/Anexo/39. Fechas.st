"Hacer un método que dada una fecha en formato DD/MM/AA, verifique si es correcta o errónea. Ej: el 31/02/97 es una fecha errónea. (no contemplar los años bisiestos)"

| fecha acepta31 |

acepta31:= #(1 3 5 7 8 10 12).

fecha := String streamContents: [ :f |
	f nextPutAll: (UIManager default request: 'Ingrese el día (DD):').
	f nextPut: $/.
	f nextPutAll: (UIManager default request: 'Ingrese el mes (MM):').
	f nextPut: $/.
	f nextPutAll: (UIManager default request: 'Ingrese el año (AA):').
].
Transcript show: 'Fecha completa: ', fecha; cr.

fecha:= fecha findTokens: $/.
fecha:= (fecha allButLast) collect: [ :c | c asInteger ]. " realmente no aporta nada el año, porque el formato es AA entonces no podes saber si es o no bisiesto "


(fecha first > 31 or: [ fecha second > 12 ]) ifTrue: [ ^Transcript show: 'Fecha erronea.' ]. "DD > 31 o MM > 12"
(((acepta31 includes: fecha second) not) and: (fecha first = 31)) ifTrue: [ ^Transcript show: 'Año erronea.' ]. "mes que no deberia tener 31 dias"
((fecha second = 2) and: [ fecha first > 28 ]) ifTrue: [ ^Transcript show: 'Fecha erronea.' ]. "29 dias o mas en febrero"

Transcript show: 'Fecha correcta.'.

