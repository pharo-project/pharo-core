accessing
formatterClass
	^ FormatterClass isNil 
		ifTrue: [ RBConfigurableFormatter ] 
		ifFalse: [ FormatterClass ]