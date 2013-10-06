object: anObject 
	"Set anObject to be the object being inspected by the receiver."

	| oldIndex |
	anObject == object
		ifTrue: [self update]
		ifFalse:
			[oldIndex := selectionIndex <= 2 ifTrue: [selectionIndex] ifFalse: [0].
			self inspect: anObject.
			oldIndex := oldIndex min: self fieldList size.
			self changed: #inspectObject.
			oldIndex > 0
				ifTrue: [self toggleIndex: oldIndex].
			self changed: #fieldList.
			self changed: #contents]