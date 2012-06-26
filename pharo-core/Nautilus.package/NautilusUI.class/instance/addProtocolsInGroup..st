group
addProtocolsInGroup: aCollection
	| class mthds |
	
	(class := self selectedClass) ifNil: [ ^ self ].
	
	mthds := self showGroups
				ifTrue: [ self methodsForCategoriesInGroup: aCollection ]
				ifFalse:[ self methodsForCategories: aCollection ].

	(DialogGroupAdder new
		groups:	self groupsManager;
		elementsToAdd: (mthds sort: [:a :b | a name < b name]))
		open