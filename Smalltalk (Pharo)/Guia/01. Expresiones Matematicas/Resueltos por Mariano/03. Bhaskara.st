| bhaskara1 bhaskara2 discriminante a b c |

a := ((UIManager default request: 'Ingrese a.') asInteger) ifNil: [UIManager default alert: 'No se ingreso un valor. Intente de nuevo' ].
b := ((UIManager default request: 'Ingrese b.') asInteger) ifNil: [UIManager default alert: 'No se ingreso un valor. Intente de nuevo' ].
c := ((UIManager default request: 'Ingrese c.') asInteger 

) ifNil: [UIManager default alert: 'No se ingreso un valor. Intente de nuevo' ].

discriminante:= ((b raisedTo: 2) - (4 * a * c)).

(discriminante >= 0)
	ifTrue: [  
		bhaskara1:= [ ((b negated) + (discriminante sqrt)) / (2 * a) ].
		bhaskara2:= [ ((b negated) - (discriminante sqrt)) / (2 * a) ].
		UIManager default alert: 
			'X1 = ', (bhaskara1 value) printString, String cr, 
			'X2 = ', (bhaskara2 value) printString.
	]
	ifFalse: [
		discriminante:= discriminante negated.
		Transcript show: 'No tiene raices dentro de conjunto de los reales'.
		bhaskara1:= [ ((b negated) + (discriminante sqrt)) / (2 * a) ].
		bhaskara2:= [ ((b negated) - (discriminante sqrt)) / (2 * a) ].
		UIManager default alert: 
			'X1 = ', (bhaskara1 value) printString, 'i', String cr, 
			'X2 = ', (bhaskara2 value) printString, 'i'.
	]
