showPackages: aBoolean

	self okToChange
		ifTrue: [
			listElements := nil.
			self resetClassesList.
			list enabled: aBoolean.
			aBoolean
				ifFalse: [| class |
					class := self selectedClass theNonMetaClass.
					self classWidget selectClass: class.
					self hierarchyClass: class .
					listElements := nil.
					self resetClassesList.
					self showGroups
						ifTrue: [self showGroupsSilently: false]].
			listElements := nil.
			self resetClassesList.
			self model showPackages: aBoolean.
			self changed: #groupsButtonLabel.
			self updateBothView.
			self changed: #toggleButtonState.
			self changed: #toggleButtonLabel.
			self changedLabels ]