diveInto: anObject
	^ self owner ifNotNil: [ :navigator | 
		navigator diveInto: anObject]