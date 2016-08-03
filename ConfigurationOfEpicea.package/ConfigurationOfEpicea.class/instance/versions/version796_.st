version796: spec
	<version: '7.96' imports: #('7.2.p5-baseline')>

	spec for: #'pharo5.x' do: [
		spec blessing: #'release'.
		spec description: 'Copy Pharo contributions:
18600 create "pharo-local" to concentrate pharo local files (package-cache, epicea-sessions, etc.)
	https://pharo.fogbugz.com/f/cases/18600
	
18608 Impossible to delete a class
	https://pharo.fogbugz.com/f/cases/18608
'.
	
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-TheIntegrator.202';
			package: 'OmbuTests' with: 'OmbuTests-DenisKudryashov.6';
			package: 'Epicea' with: 'Epicea-TheIntegrator.794';
			package: 'EpiceaTests' with: 'EpiceaTests-MD.6';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.18';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-TheIntegrator.3';
			package: 'Hiedra' with: 'Hiedra-MartinDias.136';
			package: 'EpiceaHiedra' with: 'EpiceaHiedra-MD.11';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
