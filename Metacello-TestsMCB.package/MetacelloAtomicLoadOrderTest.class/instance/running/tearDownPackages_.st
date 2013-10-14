tearDownPackages: aGoferInstance

	super tearDownPackages: aGoferInstance.
	(self hasPackage: 'GeauxFoo')
		ifTrue: [ aGoferInstance package: 'GeauxFoo' ].
	(self hasPackage: 'GeauxBeau')
		ifTrue: [ aGoferInstance package: 'GeauxBeau' ].
	(self hasPackage: 'GoferFar')
		ifTrue: [ aGoferInstance package: 'GoferFar' ].
	(self hasPackage: 'GoferFan')
		ifTrue: [ aGoferInstance package: 'GoferFan' ].
	(self hasPackage: 'GoferUmbrella')
		ifTrue: [ aGoferInstance package: 'GoferUmbrella' ].
	(self hasPackage: 'GoferBarDependency')
		ifTrue: [ aGoferInstance package: 'GoferBarDependency' ].
	(self hasPackage: 'GoferFooDependency')
		ifTrue: [ aGoferInstance package: 'GoferFooDependency' ].
	(self hasPackage: 'MetacelloTestConfigurationOfAtomicFoo')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfAtomicFoo' ].
	(self hasPackage: 'MetacelloTestConfigurationOfAtomicFan')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfAtomicFan' ].
	(self hasPackage: 'MetacelloTestConfigurationOfLinearFoo')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfLinearFoo' ].
	(self hasPackage: 'MetacelloTestConfigurationOfUmbrellaA')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfUmbrellaA' ].
	(self hasPackage: 'MetacelloTestConfigurationOfUmbrellaB')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfUmbrellaB' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectIssue86')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectIssue86' ].
		
		
	