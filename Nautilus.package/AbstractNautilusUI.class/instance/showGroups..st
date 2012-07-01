accessing
showGroups: aBoolean

	self okToChange ifFalse: [ ^ self ].
	
	self setGlobalShorcutsTo:  list2.
	aBoolean 
		ifTrue: [ list enabled: true ].
		
	self setGlobalShorcutsTo: list.
	
	listElements := nil.
	self showPackages 
		ifFalse: [ self showPackagesSilently: true ].
	self selectedGroup
		ifNil: [ self selectedClass: nil ]
		ifNotNil: [:group |
			(group elements includes: self selectedClass)
				ifFalse: [ 
					list2Elements := nil.
					self selectedClass: nil ].
	aBoolean 
		ifTrue: [ 
			groupsSelection at: group put: true ]
		ifFalse: [ 
			packagesSelection at: self selectedPackage put: true ]].

	self model showGroups: aBoolean.
	self changed: #groupsButtonLabel.
	self changed: #toggleButtonLabel.
	self changedLabels.
	self updateBothView