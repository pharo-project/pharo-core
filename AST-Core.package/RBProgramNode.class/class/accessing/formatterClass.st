formatterClass
	^ FormatterClass ifNil: [ RBConfigurableFormatter ] ifNotNil: [ FormatterClass ]