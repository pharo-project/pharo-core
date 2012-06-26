accessing
selectedPackageWithoutChangingSelection: aPackage

	self okToChange
		ifTrue: [| class |
			class := self selectedClass.
			(self showPackages and: [class notNil and: [class package ~= aPackage]])
				ifTrue: [ self selectedClass: nil ].
			self model package: aPackage class: self selectedClass category: nil method: nil.
			packagesSelection at: aPackage put: true.
			self updateClassView.
			self update.
			self changed: #getComments.
			self changed: #sourceCode]