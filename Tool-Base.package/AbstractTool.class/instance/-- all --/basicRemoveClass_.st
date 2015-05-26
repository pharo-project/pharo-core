basicRemoveClass: classToRemove
	^ classToRemove subclasses notEmpty
		ifTrue: [ 
			(self
				confirm:
					classToRemove name
						,
							' has subclasses.
Do you really want to REMOVE it from the system ?')
				ifTrue: [ classToRemove removeFromSystem ] ]
		ifFalse: [ classToRemove removeFromSystem ]