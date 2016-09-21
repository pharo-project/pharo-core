version802: spec
	<version: '8.0.2' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Replace remaining "Smalltalk ui icons iconNamed: x" by "self iconNamed: x"
'.
	
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.210';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.7';
			package: 'Epicea' with: 'Epicea-MartinDias.815';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.8';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.83';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-TheIntegrator.7';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
