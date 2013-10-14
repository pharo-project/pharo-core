testProjectToolBox
	| configurationName rejects |
	gofer
		repository: self atomicConfigurationRepository;
		repository: self alternateRepository;
		repository: self configurationRepository.
	configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer package: configurationName.
	gofer load.
	rejects := #('1.0.4-baseline' '1.0.6-baseline' '1.0.7-baseline' '1.1.0-baseline' '1.1.4-baseline' '1.1.6-baseline' '1.2.8-baseline' '1.2.9-baseline' ).
	(((Smalltalk at: configurationName asSymbol) new project versions collect: [ :each | each versionString ])
		reject: [ :each | rejects includes: each ])
		do: [ :versionString | self assertVersionSpecFor: configurationName isEqualAfterModifyingVersion: versionString ]