version822: spec
	<version: '8.2.2' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Case 20004: Do not subscribe anymore to SnapshotDone.
- Case 19955: ask before recovering + Pass on EpLostChangesDetector.
- Improve workaround to listen ClassRemoved.
- Space optimization in .ombu: avoid writing globalName on each OmReference.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.277';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.33';
			package: 'Epicea' with: 'Epicea-MartinDias.855';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.24';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.180';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.32';
			package: 'Hiedra' with: 'Hiedra-MartinDias.146';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.6';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
