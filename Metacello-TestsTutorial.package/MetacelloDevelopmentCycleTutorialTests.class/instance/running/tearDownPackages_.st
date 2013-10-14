tearDownPackages: aGoferInstance

	(self hasPackage: 'GoferFoo')
		ifTrue: [ aGoferInstance package: 'GoferFoo' ].
	(self hasPackage: 'GoferBar')
		ifTrue: [ aGoferInstance package: 'GoferBar' ].
	(self hasPackage: 'GoferFaux')
		ifTrue: [ aGoferInstance package: 'GoferFaux' ].
	(self hasPackage: 'GoferBeau')
		ifTrue: [ aGoferInstance package: 'GoferBeau' ].
	(self hasPackage: 'GeauxFaux')
		ifTrue: [ aGoferInstance package: 'GeauxFaux' ].
	(self hasPackage: 'GeauxBeau')
		ifTrue: [ aGoferInstance package: 'GeauxBeau' ].
	(self hasPackage: 'MetacelloTestConfigurationOfFoo')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfFoo' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectFee')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectFee' ].
