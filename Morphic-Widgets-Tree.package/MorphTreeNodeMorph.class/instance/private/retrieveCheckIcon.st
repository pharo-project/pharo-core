retrieveCheckIcon

	^ self selected
		ifTrue: [ Smalltalk ui icons checkedBoxIcon ]
		ifFalse: [ 
			self isPartialMatch
				ifTrue: [ Smalltalk ui icons partialCheckedBoxIcon ]
				ifFalse: [ Smalltalk ui icons uncheckedBoxIcon ] ]