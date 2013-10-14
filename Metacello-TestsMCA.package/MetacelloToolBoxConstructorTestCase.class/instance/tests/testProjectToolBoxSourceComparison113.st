testProjectToolBoxSourceComparison113
	| configurationName versionString |
	gofer
		repository: self atomicConfigurationRepository;
		repository: self alternateRepository;
		repository: self configurationRepository.
	configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer package: configurationName.
	gofer load.
	versionString := '1.1.3'.
	self assertMethodSourceFor: configurationName isEqualAfterModifyingVersion: versionString.
