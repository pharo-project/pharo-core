selectedClass: aClass 

	self okToChangeBoth
		ifTrue: [
			classesSelection removeAll.
			aClass ifNotNil: [ self giveFocusTo: list2 ].	
			self selectedClassWithoutChangingSelection: aClass. ]