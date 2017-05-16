version823: spec
	<version: '8.2.3' imports: #('8.0.0-baseline')>

	spec for: #'pharo6.x' do: [
		spec blessing: #'release'.
		spec description: '
- Restore Pavel''s fix on weak subscriptions (not sure when the change was rolled-back).
- case 20042: workaround:
  * By default, just log in Transcript any error during a change log. Provide "EpMonitor current debugMode: true" to really signal the error.
  * Added #testMetaclassInstanceVariableAdditionWithTrait
'.
		spec author: 'MartinDias'.
		spec project: 'SMark' with: '1.0.1'.
		spec 
			package: 'Ombu' with: 'Ombu-MartinDias.277';
			package: 'OmbuTests' with: 'OmbuTests-MartinDias.33';
			package: 'Epicea' with: 'Epicea-MartinDias.856';
			package: 'EpiceaTests' with: 'EpiceaTests-MartinDias.25';
			package: 'EpiceaBrowsers' with: 'EpiceaBrowsers-MartinDias.180';
			package: 'EpiceaBrowsersTests' with: 'EpiceaBrowsersTests-MartinDias.32';
			package: 'Hiedra' with: 'Hiedra-MartinDias.146';
			package: 'EpiceaBenchmarks' with: 'EpiceaBenchmarks-MartinDias.6';
			package: 'EpiceaKomitter' with: 'EpiceaKomitter-MartinDias.13';
			package: 'EpiceaSUnit' with: 'EpiceaSUnit-MartinDias.4'. ].
