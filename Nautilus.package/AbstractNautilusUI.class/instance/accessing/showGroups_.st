showGroups: aBoolean

	self okToChange ifFalse: [ ^ self ].
	self flag:#todo.
	"test if this is necessary"
	"self setShortcuts: #NautilusClassShortcuts to: self classWidget."
	
	aBoolean 
		ifTrue: [ 
			self packageWidget enabled: true.
			self packageWidget removeShortcuts: #NautilusPackageShortcuts.
			self packageWidget setShortcuts: #NautilusGroupShortcuts]
		ifFalse: [
			self packageWidget removeShortcuts: #NautilusGroupShortcuts.
			self packageWidget setShortcuts: #NautilusPackageShortcuts].
		
	
	
	self resetPackagesList.
	self showPackages 
		ifFalse: [ self showPackagesSilently: true ].
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