version804: spec
	<version: '8.0.4' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Removing redundant methods in trait users. Fix testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.210';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.7';
			package: 'Epicea' with: 'Epicea-MartinDias.816';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.8';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.86';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-TheIntegrator.7';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
