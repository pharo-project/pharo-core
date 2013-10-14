testProjectToolBox128Baseline
	| configurationName versionString |
	gofer
		repository: self atomicConfigurationRepository;
		repository: self alternateRepository;
		repository: self configurationRepository.
	configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer package: configurationName.
	gofer load.
	versionString := '1.2.8-baseline'.
	self assertVersionSpecFor: configurationName isEqualAfterModifyingVersion: versionString