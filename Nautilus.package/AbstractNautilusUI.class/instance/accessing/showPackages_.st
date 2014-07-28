showPackages: aBoolean

	self okToChange
		ifTrue: [
			self resetPackagesList.
			self resetClassesList.
			self packageWidget enabled: aBoolean.
			aBoolean
				ifFalse: [| class |
					class := self selectedClass theNonMetaClass.
					self classWidget selectClass: class.
					self hierarchyClass: class .
					self resetPackagesList.
					self resetClassesList.
					self showGroups
						ifTrue: [self showGroupsSilently: false]].
			self resetPackagesList.
			self resetClassesList.
			self model showPackages: aBoolean.
			self changed: #groupsButtonLabel.
			self updateBothView.
			self changed: #toggleButtonState.
			self changed: #toggleButtonLabel.
			self changedLabels ]