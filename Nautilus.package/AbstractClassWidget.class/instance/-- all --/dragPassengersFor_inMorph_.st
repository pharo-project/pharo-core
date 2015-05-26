dragPassengersFor: item inMorph: dragSource 

	| transferType object |
	
	(dragSource isKindOf: PluggableListMorph) ifFalse: [^ nil ].
	transferType := self dragTransferTypeForMorph: dragSource.
	object := item originalObject.
	transferType == #getClassItem: ifTrue: [ 
		self model showGroups 
		ifTrue: [ self model selectedGroup
								ifNil: [ ^ nil ]
								ifNotNil: [:g | g isFillable ifFalse: [ ^ nil ]]]. 
		^ self selectedClasses ifEmpty: [ { object } ] ].
	^ nil