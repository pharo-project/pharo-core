version808: spec
	<version: '8.0.8' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Fix case #19600: OmNullReference should provide #globalName.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.225';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.14';
			package: 'Epicea' with: 'Epicea-MartinDias.821';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.10';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.105';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.8';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
