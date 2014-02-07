addPackageRequirement
	"Add a requirement (a group, another package) for the selected package."
	
	packagesList selectedItem
		ifNil: [ UIManager default inform: 'No package selected' ]
		ifNotNilDo: [ :package |
			|  potentialRequirements |
			potentialRequirements := project dependencies collect: [ :dependency | dependency name ].
			^ UIManager default chooseFrom: potentialRequirements values: potentialRequirements ].
	^ nil