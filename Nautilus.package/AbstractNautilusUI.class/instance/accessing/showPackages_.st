showPackages: aBoolean

	self okToChange
		ifTrue: [
			listElements := nil.
			list2Elements := nil.
			list enabled: aBoolean.
			aBoolean
				ifFalse: [| class |
					class := self selectedClass theNonMetaClass.
					classesSelection at: class put: true.
					self hierarchyClass: class .
					listElements := nil.
					list2Elements := nil.
					self showGroups
						ifTrue: [self showGroupsSilently: false]].
			listElements := nil.
			list2Elements := nil.
			self model showPackages: aBoolean.
			self changed: #groupsButtonLabel.
			self updateBothView.
			self changed: #toggleButtonState.
			self changed: #toggleButtonLabel.
			self changedLabels ]