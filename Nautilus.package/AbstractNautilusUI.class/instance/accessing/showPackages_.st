showPackages: aBoolean
	self okToChange
		ifFalse: [ ^ self ].
	self resetPackageGroupsList.
	self resetClassesList.
	self packageWidget enabled: aBoolean.
	self classWidget showHierarchy: aBoolean not.
	aBoolean
		ifFalse: [ 
			| class |
			class := self selectedClass theNonMetaClass.
			self classWidget selectClass: class.
			self resetPackageGroupsList.
			self resetClassesList.
			self showGroups
				ifTrue: [ self showGroupsSilently: false ] ].
	self resetPackageGroupsList.
	self resetClassesList.
	self model showPackages: aBoolean.
	self changed: #groupsButtonLabel.
	self updatePackageGroupAndClassList.
	self changed: #hierarchyButtonState.
	self changed: #hierarchyButtonLabel.
	self changedLabels