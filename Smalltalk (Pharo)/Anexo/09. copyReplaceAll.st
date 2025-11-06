"Dado un string de entrada y un substring, quitar del string original el substring en cuestión. Ej. ‘Necesito practicar mas Smalltalk sino no llego a los parciales’, quitar: ‘si’-> ‘Neceto practicar mas Smalltalk no no llego a los parciales"

| str sub |

str:= 'Necesito practicar mas Smalltalk sino no llego a los parciales'.

sub:= UIManager default request: 'Ingrese el substring a quitar.'.

UIManager default alert: (str copyReplaceAll: sub with: '').
