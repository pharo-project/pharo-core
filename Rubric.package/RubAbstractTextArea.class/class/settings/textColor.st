textColor
	^ DefaultTextColor ifNil: [ DefaultTextColor := Smalltalk ui theme textColor ]  