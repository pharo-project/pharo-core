selectedPackageWithoutChangingSelectionInternally: aPackage
	| class |
	class := self selectedClass.
	(self showPackages and: [class notNil and: [class package ~= aPackage]])
		ifTrue: [ self selectedClass: nil ].
	self packageWidget selectPackage: aPackage.
	
	aPackage ifNotNil: [ self giveFocusTo: self packageWidget ].
	
	self updateClassView.
	self updateCategoryAndMethodList.
	self changed: #getComments.
	self changed: #sourceCodeFrom: