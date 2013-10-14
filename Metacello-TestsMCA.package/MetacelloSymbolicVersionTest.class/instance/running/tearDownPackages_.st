tearDownPackages: aGoferInstance

	super tearDownPackages: aGoferInstance.
	(self hasPackage: 'MetacelloTestConfigurationOfSymbolic')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfSymbolic' ].
