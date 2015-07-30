formatterClass
	^ FormatterClass ifNil: [ BIConfigurableFormatter ] ifNotNil: [ FormatterClass ]