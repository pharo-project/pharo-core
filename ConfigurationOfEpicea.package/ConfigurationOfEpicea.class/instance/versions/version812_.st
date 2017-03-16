version812: spec
	<version: '8.1.2' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Log browser:
  * Display changes in a FastTableModel instead of a TreeModel, much faster for many changes.
  * Remove "x filtered entries" display as well as "See 50 more" and "See all" buttons, to make the list of changes look more as a standard list (to the user eyes). Also, implementation was not nice.
  * Big code clean up.
  * Show number of active filters in tab (small visual improvement).
  * Increase initial width.
- Fix case 19737: class removal annoucement now comes after class is renamed to AnObsolete (workaround).
- Fix case 19263: Catch all errors on redo and undo.
- Merge with fix to case 19819 by Denis. Thanks!
- Multiple code clean-ups
  * Code Critic runs.
  * Reduce direct explicit references to EpMonitor.
  * Others.
- Add tests of apply and revert changes.
- Split EpLog into a new superclass to conform a hierarchy, which has now EpSorterLog.
- Ombu:
  * Shutdown flush should be performed by all OmDeferrers, not only by all OmSessionStores.
  * Workaround needed because can''t get real file stream position from ZnBufferedWriteStream (+ would need special care of WideStrings).
  * Remove OmDirectoryStore and OmCompositeStore since they are not used anymore (continuous-style EpPriorView was the user).
  * The Ston''s OmEntryReader should not receive the stream as parameter and then store it in the Ston reader. This produced was confussing and produced concurrency issues.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.260';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.27';
			package: 'Epicea' with: 'Epicea-MartinDias.837';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.19';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.142';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.17';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.6';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
