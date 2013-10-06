positionAt: anIndex
	| rect array |
	rect := AthensPangoRectangle new.
	array :=  rect asByteArray.
	self primIndexToPosition: anIndex fill: array.
	rect readFrom: array.
	^ rect origin	


