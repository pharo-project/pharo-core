showHierarchy: aBoolean
	self okToChange
		ifFalse: [ ^ self ].
	self resetPackageGroupsList.
	self resetClassesList.
	self packageWidget enabled: aBoolean not.
	self classWidget showHierarchy: aBoolean.
	aBoolean
		ifTrue: [ 
			| class |
			class := self selectedClass theNonMetaClass.
			self classWidget selectClass: class.
			self resetPackageGroupsList.
			self resetClassesList.
			self showGroups
				ifTrue: [ self showGroupsSilently: false ] ].
	self resetPackageGroupsList.
	self resetClassesList.
	self model showHierarchy: aBoolean.
	self changed: #groupsButtonLabel.
	self updatePackageGroupAndClassList.
	self changed: #hierarchyButtonState.
	self changed: #hierarchyButtonLabel.
	self changedLabels