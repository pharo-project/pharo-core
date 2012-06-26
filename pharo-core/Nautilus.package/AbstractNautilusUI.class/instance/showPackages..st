accessing
showPackages: aBoolean

	self okToChange
		ifTrue: [
			listElements := nil.
			list2Elements := nil.
			list detachAllKeymapCategories.
			list2 detachAllKeymapCategories.
			list enabled: aBoolean.
			aBoolean
				ifTrue: [ 
					self setPackageShorcutsTo: list.
					self setClassShorcutsTo: list2.]
				ifFalse: [| class |
					self setPackageShorcutsTo: list2.	
					self setClassShorcutsTo: list.
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