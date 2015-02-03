write: aValue to: anObject
	|result|
	result := anObject instVarAt: index put: aValue.
	anObject onSlotChanged: self.
	^ result