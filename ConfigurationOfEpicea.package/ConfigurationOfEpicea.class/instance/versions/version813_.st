version813: spec
	<version: '8.1.3' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Fix potential concurrency issue in OmFileStore>>flushEntryBuffer.
- Remove redundant methods copied from trait by some unknown bug.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.261';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.27';
			package: 'Epicea' with: 'Epicea-MartinDias.837';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.19';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.143';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.17';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.6';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
