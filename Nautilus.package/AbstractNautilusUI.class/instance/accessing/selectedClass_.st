selectedClass: aClass 

	self okToChangeBoth
		ifTrue: [
			self resetClassesListSelection.
			aClass ifNotNil: [ self giveFocusTo: self classWidget ].	
			self selectedClassWithoutChangingSelection: aClass. ]