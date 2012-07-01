debug and other
programmedMouseUp: anEvent for: aMorph 
	| aCodeString |
	self deleteAnyMouseActionIndicators.
	aCodeString := self valueOfProperty: #mouseUpCodeToRun ifAbsent: [^self].
	(self fullBounds containsPoint: anEvent cursorPoint) ifFalse: [^self].
	aCodeString value.
		