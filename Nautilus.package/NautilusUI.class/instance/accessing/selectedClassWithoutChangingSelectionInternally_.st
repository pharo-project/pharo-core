selectedClassWithoutChangingSelectionInternally: aClass
	| package packageChanged |
		package := self selectedPackage.
		(self showPackages not or: [ self showGroups ])
			ifTrue: [ aClass ifNotNil: [ package := aClass package ] ].
		aClass 
			ifNil: [ self resetClassesListSelection ].

		aClass ifNotNil: [ self giveFocusTo: self classWidget ].	
			
		packageChanged := (package ~= self selectedPackage).
		self classWidget selectClass: aClass.
		self model selectedClass: aClass.
		self setWindowTitle.
		
		packageChanged ifTrue: [
			self packageWidget resetPackagesSelection.
			self packageWidget selectPackage: package.
			self showGroups
				ifTrue: [ self updateClassView ]
				ifFalse: [ self updatePackageGroupAndClassList ] ].
			
		self resetCategoriesListSelection.
		self resetMethodsListSelection.
		self updateCategoryAndMethodList.
		self changed: #isAClassSelected.
		self changed: #getComments.
		self changed: #sourceCodeFrom: