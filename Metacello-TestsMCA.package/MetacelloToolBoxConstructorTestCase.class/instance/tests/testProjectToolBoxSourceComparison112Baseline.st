testProjectToolBoxSourceComparison112Baseline
	| configurationName versionString |
	gofer
		repository: self atomicConfigurationRepository;
		repository: self alternateRepository;
		repository: self configurationRepository.
	configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer package: configurationName.
	gofer load.
	versionString := '1.1.2-baseline'.
	self assertMethodSourceFor: configurationName isEqualAfterModifyingVersion: versionString