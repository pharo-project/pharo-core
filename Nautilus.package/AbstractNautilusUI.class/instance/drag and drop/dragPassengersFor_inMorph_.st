dragPassengersFor: item inMorph: dragSource 
	| transferType object |
	
	object := item originalObject.

	(dragSource isKindOf: PluggableListMorph)
		ifFalse: [^ nil ].
	transferType := self dragTransferTypeForMorph: dragSource.
	transferType == #getCategoryItem:
		ifTrue: [ ^ self selectedCategories ifEmpty: [ { object } ] ].
	
	transferType == #listElement2:
			ifTrue: [ 
				self showGroups 
					ifTrue: [ self selectedGroup
								ifNil: [ ^ nil ]
								ifNotNil: [:g | g isFillable ifFalse: [ ^ nil ]]].
				
				^ self selectedClasses ifEmpty: [ { object } ]].

	transferType == #getMethodItem:
			ifFalse: [ ^ nil ].

	^ self selectedMethods
		ifEmpty: [
			 (self getMethods includes: object)
				ifTrue: [{ object }]
				ifFalse: [ nil ]]