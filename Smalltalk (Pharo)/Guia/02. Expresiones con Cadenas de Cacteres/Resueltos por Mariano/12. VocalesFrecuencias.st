| archivo texto cantidades |

archivo := 'Archivos txt\martin_fierro.txt' asFileReference.
texto := archivo contents asString trimRight. "esto saca los \r\n y espacios que estan tal cual al final del txt en disco"

((texto last) = $.)  "hudson.txt ya tiene punto final, martin_fierro.txt no"
	ifFalse: [ texto:= texto, '.'].

Transcript show: texto, String cr, '----------------------------------------'; cr; flush.
texto:= texto findTokens: Character separators.
Transcript show: texto; cr; flush.
Transcript show: '----------------------------------------'; cr; flush.

cantidades:= #(0 0 0 0 0).

texto do: [ :palabra |
	(palabra asLowercase) do: [ :letra |
		letra caseOf: { 
			$a -> [cantidades at: 1 put: ((cantidades at: 1) + 1)].
            $e -> [cantidades at: 2 put: ((cantidades at: 2) + 1)].
            $i -> [cantidades at: 3 put: ((cantidades at: 3) + 1)].
            $o -> [cantidades at: 4 put: ((cantidades at: 4) + 1)].
            $u -> [cantidades at: 5 put: ((cantidades at: 5) + 1)].
		} otherwise: [ ].
	]
].		

Transcript show: cantidades printString; cr; flush.
texto:= 'La vocal con mas frecuencia es: '.
(cantidades indexOf: (cantidades max)) caseOf: {
	1 -> [ UIManager default alert: texto, 'a' ].
	2 -> [ UIManager default alert: texto, 'e' ].
	3 -> [ UIManager default alert: texto, 'i' ].
	4 -> [ UIManager default alert: texto, 'o' ].
	5 -> [ UIManager default alert: texto, 'u' ].
}.
