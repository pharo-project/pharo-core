version797: spec
	<version: '7.97' imports: #('7.2.p5-baseline')>

	spec for: #'pharo5.x' do: [
		spec blessing: #'release'.
		spec description: '
- Case 18813: Implement redo and undo of protocol addition and removal.

- Case 18612: disable drag&drop until TreeModel supports it correctly.

- Case 18384: Redo and undo: show on any selection (not only when all selected entries are code changes).

- Fix "Open in Sorter" menu action. However, also hide it since it is useless until drag&drop is fixed.

- Improve lost changes detection: show only the events actually lost.

- Do not show the "absent entry" item anymore since it was not useful at all.

- Pass on filters.

- Remove unused "commit tags" in log browser.

- Remove unused tests. They were good idea, we can re-introduce them but working and covering more cases.

- Rename #displayWidget to #asMorph in EpLogBrowserItem''s hierarchy. It is more meaningful.

'.
	
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.203';
			package: 'OmbuTests' with: 'OmbuTests-DenisKudryashov.6';
			package: 'Epicea' with: 'Epicea-MartinDias.799';
			package: 'EpiceaTests' with: 'EpiceaTests-MD.6';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.33';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.6';
			package: 'Hiedra' with: 'Hiedra-MartinDias.136';
			package: 'EpiceaHiedra' with: 'EpiceaHiedra-MD.11';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.4';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
