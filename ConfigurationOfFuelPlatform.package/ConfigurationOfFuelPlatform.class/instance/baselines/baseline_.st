baseline: spec
	<version: #'baseline'>
	spec for: #common do: [		
		spec
			blessing: #baseline;
			postLoadDoIt: #addPostloadHacks;
			package: 'FuelPlatform-Core'.
		self fuelRepository: spec.
			
		spec group: 'default' with: #('FuelPlatform-Core' 'FuelPlatformCurrentGroup'). ].
	
	self 
		pharoPackagesAndGroups: spec;
		squeakPackagesAndGroups: spec