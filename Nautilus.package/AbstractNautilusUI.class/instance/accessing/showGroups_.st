showGroups: aBoolean

	self okToChange ifFalse: [ ^ self ].

	aBoolean 
		ifTrue: [ 
			self packageWidget enabled: true.
			self packageWidget removeShortcuts: #NautilusPackageShortcuts.
			self packageWidget setShortcuts: #NautilusGroupShortcuts]
		ifFalse: [
			self packageWidget removeShortcuts: #NautilusGroupShortcuts.
			self packageWidget setShortcuts: #NautilusPackageShortcuts].
		
	
	
	self resetPackageGroupsList.
	self showHierarchy 
		ifTrue: [ self showHierarchySilently: false ].
	self selectedGroup
		ifNil: [ self selectedClass: nil ]
		ifNotNil: [:group |
			(group elements includes: self selectedClass)
				ifFalse: [ 
						self resetClassesList.
					self selectedClass: nil ].
	aBoolean 
		ifTrue: [ 
			self packageWidget selectGroup: group ]
		ifFalse: [ 
			self packageWidget selectPackage: self selectedPackage ]].

	self model showGroups: aBoolean.
	self changed: #groupsButtonLabel.
	self changed: #hierarchyButtonLabel.
	self changedLabels.
	self updatePackageGroupAndClassList