allowedInStyle
	^ allowedInStyle ifNil: [allowedInStyle := self hasValue]