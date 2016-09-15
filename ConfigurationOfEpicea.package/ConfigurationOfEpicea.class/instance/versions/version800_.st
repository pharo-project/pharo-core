version800: spec
	<version: '8.0.0' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Pass on UI + search more consistent names (e.g. session -> log).

- Replace "Session Browser" by "Log Set" from EpiceaHiedra experimental package.

- Add EpMonitorModel, to manipulate EpMonitor via UI.

- Rename: apply/revert instead of redo/undo.

- Fix 18946: package does not exist when a category removal is announced.

- Fix comments on Dark theme.

- Avoid using #name in some cases.

- Make EpLogBrowser composable (it needs to be correctly initialized when created with #new).

- Optimization: reuse entryReader with an instance variable.

- Encapsulate morph creation to a new class: EpMorphFactory.

- Delete Trait issue (case 19045): Avoid sending #name to nil.

- Add EpMonitor>>debug setting

- Ombu writing entries: Do not catch all Error but FileException.

- Ombu: Move writing error handling to EpMonitor.
'.
	
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.210';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.7';
			package: 'Epicea' with: 'Epicea-MartinDias.815';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.8';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.80';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.6';
			package: 'Hiedra' with: 'Hiedra-MartinDias.144';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
