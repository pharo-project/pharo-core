showPackages: aBoolean
	self okToChange
		ifFalse: [ ^ self ].
	self resetPackagesList.
	self resetClassesList.
	self packageWidget enabled: aBoolean.
	self classWidget showHierarchy: aBoolean not.
	aBoolean
		ifFalse: [ 
			| class |
			class := self selectedClass theNonMetaClass.
			self classWidget selectClass: class.
			self resetPackagesList.
			self resetClassesList.
			self showGroups
				ifTrue: [ self showGroupsSilently: false ] ].
	self resetPackagesList.
	self resetClassesList.
	self model showPackages: aBoolean.
	self changed: #groupsButtonLabel.
	self updatePackageGroupAndClassList.
	self changed: #hierarchyButtonState.
	self changed: #hierarchyButtonLabel.
	self changedLabels