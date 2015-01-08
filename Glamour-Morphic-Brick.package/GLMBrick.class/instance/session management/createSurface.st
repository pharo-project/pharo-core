createSurface
"	surface isNil ifFalse: [ ^ self ]."
	surface := AthensCairoSurface extent: self extent asIntegerPoint.
	session := Smalltalk session.