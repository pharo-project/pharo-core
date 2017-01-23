version806: spec
	<version: '8.0.6' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Replace workarounds by new OmSessionStore and EpMonitor state update announcements.
- Improve refreshing details.
- Remove OmSessionStore>>maximumNumberOfEntries since it''s not needed anymore.
- Check if new store name is available.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.224';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.14';
			package: 'Epicea' with: 'Epicea-MartinDias.819';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.10';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.103';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.8';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
