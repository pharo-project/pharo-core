hasChanges
	|  initialProject |
	
	versionList selectedItem ifNil: [ ^ false ].
	initialProject := MTProject 
						newFromVersion: versionList selectedItem version
						inRepository: configuration configurationClass.
	^ (MTModelComparator is: project equalsTo: initialProject) not