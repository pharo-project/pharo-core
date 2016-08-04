version798: spec
	<version: '7.98' imports: #('7.2.p5-baseline')>

	spec for: #'pharo5.x' do: [
		spec blessing: #'release'.
		spec description: '
- Fix lost changes detection: tolerate absent log file.

- Enhance lost changes detector: do not proceed if it is headless mode.

- Add setting to enable or disable lost events detector.

- Enhance Epicea settings entry.

- Minor enhancement: remove unused instance variable.
'.
	
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.204';
			package: 'OmbuTests' with: 'OmbuTests-DenisKudryashov.6';
			package: 'Epicea' with: 'Epicea-MartinDias.799';
			package: 'EpiceaTests' with: 'EpiceaTests-MD.6';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.37';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.6';
			package: 'Hiedra' with: 'Hiedra-MartinDias.136';
			package: 'EpiceaHiedra' with: 'EpiceaHiedra-MD.11';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
