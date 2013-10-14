testConfigurationResources
	gofer
		repository: self atomicConfigurationRepository;
		repository: self alternateRepository;
		repository: self configurationRepository.
	self configurationNameList do: [ :configurationName | gofer package: configurationName ].
	gofer load.
	self configurationNameList
		do: [ :configurationName | 
			((Smalltalk at: configurationName asSymbol) new project versions collect: [ :each | each versionString ])
				do: [ :versionString | self assertVersionSpecFor: configurationName isEqualAfterModifyingVersion: versionString ] ]