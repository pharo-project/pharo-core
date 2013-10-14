tearDownPackages: aGoferInstance

	super tearDownPackages: aGoferInstance.
	(self hasPackage: 'GeauxBar')
		ifTrue: [ aGoferInstance package: 'GeauxBar' ].
	(self hasPackage: 'GeauxBeau')
		ifTrue: [ aGoferInstance package: 'GeauxBeau' ].
	(self hasPackage: 'MetacelloTestConfigurationOfFix')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfFix' ].
	(self hasPackage: 'MetacelloTestConfigurationOfIssue77B')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfIssue77B' ].
	(self hasPackage: 'MetacelloTestConfigurationOfIssue77C')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfIssue77C' ].
	(self hasPackage: 'MetacelloTestConfigurationOfIssue77D')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfIssue77D' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectLoop')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectLoop' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectInfinite')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectInfinite' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectIssue95')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectIssue95' ].
	(self hasPackage: 'MetacelloTestConfigurationOfProjectToolBox')
		ifTrue: [ aGoferInstance package: 'MetacelloTestConfigurationOfProjectToolBox' ].
