version811: spec
	<version: '8.1.1' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Fix case #19125: Epicea Log writing is very slow.
  * Logs browser: avoid uneeded log refresh (redundant file reading).
  * Introduce OmStoreFactory, which provides a facade to create and reuse OmStore hierarchy instances.
  * Introduce OmDeferrer, a helper used both to buffer entry writing and postpone Log browser refreshes.
- Fix case #19630: MNU OmNullReference>>globalName.
- Title "Epicea - Code Changes" (analog to Nautilus).
- Use all UUID new asString36 characters instead of only 5, as proposed in case 19682.
- Adding more tests.
- Enforce browser to support log reading failures.
- Check corrupted monitor log to avoid Hiedra infinite loops.
- CodeCritics pass.
- Remove #isEpiceaCache due to a negative impact in Iceberg.
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.249';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.22';
			package: 'Epicea' with: 'Epicea-MartinDias.828';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.12';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.119';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.11';
			package: 'Hiedra' with: 'Hiedra-MartinDias.145';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.6';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
