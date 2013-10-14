tearDownPackages: aGoferInstance

	super tearDownPackages: aGoferInstance.
	(self hasPackage: 'MetacelloTestConfigurationOfFan')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfFan' ].
	(self hasPackage: 'MetacelloTestConfigurationOfFoo')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfFoo' ].
