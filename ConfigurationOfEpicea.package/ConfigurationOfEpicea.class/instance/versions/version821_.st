version821: spec
	<version: '8.2.1' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: 'Again:
- Case 19757: fixed
- Case 19686: fixed
- Case 19955: implemented #isOutdated which will be useful to fix it
- Case 19911: fixed in Pharo 6.0 by Pavel, merged with my other changes
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.274';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.33';
			package: 'Epicea' with: 'Epicea-MartinDias.853';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.24';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.177';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.30';
			package: 'Hiedra' with: 'Hiedra-MartinDias.146';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.6';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
