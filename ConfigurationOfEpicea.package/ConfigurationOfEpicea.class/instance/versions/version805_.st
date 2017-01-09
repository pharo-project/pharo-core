version805: spec
	<version: '8.0.5' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Clean up files after test run.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.210';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.7';
			package: 'Epicea' with: 'Epicea-MartinDias.816';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.9';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.86';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.8';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
