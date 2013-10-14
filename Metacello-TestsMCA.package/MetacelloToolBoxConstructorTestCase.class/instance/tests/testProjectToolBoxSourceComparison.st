testProjectToolBoxSourceComparison
	| configurationName rejects |
	gofer
		repository: self atomicConfigurationRepository;
		repository: self alternateRepository;
		repository: self configurationRepository.
	configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer package: configurationName.
	gofer load.
	rejects := #('1.0.6-baseline' '1.1.1-baseline' '1.1.2-baseline' '1.1.3' '1.3.0-baseline' '1.3.1-baseline' '1.3.2-baseline' '1.3.3-baseline').
	(((Smalltalk at: configurationName asSymbol) new project versions collect: [ :each | each versionString ])
		reject: [ :each | rejects includes: each ])
		do: [ :versionString | self assertMethodSourceFor: configurationName isEqualAfterModifyingVersion: versionString ]