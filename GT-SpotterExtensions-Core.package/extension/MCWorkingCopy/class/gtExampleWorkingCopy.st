gtExampleWorkingCopy
	<gtExample>
	<label: 'Metacello working-copy'>
	
	^ (RPackageOrganizer default packageOf: GTSpotter) mcPackage 
		ifNotNilDo: [ :mcp | mcp workingCopy ]