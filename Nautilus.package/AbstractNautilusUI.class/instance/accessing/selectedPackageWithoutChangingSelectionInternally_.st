selectedPackageWithoutChangingSelectionInternally: aPackage

	self okToChange
		ifTrue: [| class |
			class := self selectedClass.
			(self showPackages and: [class notNil and: [class package ~= aPackage]])
				ifTrue: [ self selectedClass: nil ].
			packagesSelection at: aPackage put: true.
			
			aPackage ifNotNil: [ self giveFocusTo: list ].
			
			self updateClassView.
			self update.
			self changed: #getComments.
			self changed: #sourceCodeFrom:]