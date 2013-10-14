tearDownPackages: aGoferInstance
	super tearDownPackages: aGoferInstance.
	self fullConfigurationNameList
		do: [ :configurationName | 
			(self hasPackage: configurationName)
				ifTrue: [ aGoferInstance package: configurationName ] ]