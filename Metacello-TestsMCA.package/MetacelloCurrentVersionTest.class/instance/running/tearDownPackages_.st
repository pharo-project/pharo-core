tearDownPackages: aGoferInstance

	super tearDownPackages: aGoferInstance.
	(self hasPackage: 'GeauxFoo')
		ifTrue: [ aGoferInstance package: 'GeauxFoo' ].
	(self hasPackage: 'GeauxBar')
		ifTrue: [ aGoferInstance package: 'GeauxBar' ].
	(self hasPackage: 'GeauxFaux')
		ifTrue: [ aGoferInstance package: 'GeauxFaux' ].
	(self hasPackage: 'GeauxBeau')
		ifTrue: [ aGoferInstance package: 'GeauxBeau' ].
	(self hasPackage: 'MetacelloTestConfigurationOfFum')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfFum' ].
	(self hasPackage: 'MetacelloTestConfigurationOfFoo')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfFoo' ].
	(self hasPackage: 'MetacelloTestConfigurationOfFeaux')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfFeaux' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectFie')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectFie' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectFoe')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectFoe' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectFee')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectFee' ].
