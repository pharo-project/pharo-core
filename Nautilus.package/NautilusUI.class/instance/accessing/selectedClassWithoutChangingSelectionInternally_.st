selectedClassWithoutChangingSelectionInternally: aClass
	| package packageChanged |
		package := self selectedPackage.
		(self showPackages not or: [ self showGroups ])
			ifTrue: [ aClass ifNotNil: [ package := aClass package ] ].
		aClass 
			ifNil: [ classesSelection removeAll ].

		aClass ifNotNil: [ self giveFocusTo: list2 ].	
			
		packageChanged := (package ~= self selectedPackage).
		classesSelection at: aClass put: true.
		self model selectedClass: aClass.
		self setWindowTitle.
		
		packageChanged ifTrue: [
			packagesSelection removeAll.
			packagesSelection at: package put: true.
			self showGroups
				ifTrue: [ self updateClassView ]
				ifFalse: [ self updateBothView ] ].
			
		self resetCategoriesListSelection.
		self resetMethodsListSelection.
		self update.
		self changed: #isAClassSelected.
		self changed: #getComments.
		self changed: #sourceCodeFrom: