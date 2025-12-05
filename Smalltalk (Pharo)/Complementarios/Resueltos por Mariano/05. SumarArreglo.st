| m ms fx |

m := #(1 2 2 3 4 56 6).

fx := [ :s | 
	s = 1
		ifTrue: [ m at: 1  ]
		ifFalse: [ 
			(m at: s) + (fx value: (s - 1))
		]
].

Transcript show: (fx value: (m size)) asString.
