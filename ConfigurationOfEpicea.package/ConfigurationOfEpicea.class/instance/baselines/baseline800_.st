baseline800: spec
	<version: '8.0.0-baseline'>

	spec for: #common do: [
		spec blessing: #'baseline'.
		spec repository: self mainRepositoryUrlString.

		self baseline64SMark: spec.

		spec 
			package: 'Hiedra';
			package: 'HiedraTests' with: [
				spec requires: #(Hiedra) ];
			package: 'Ombu';
			package: 'OmbuTests' with: [
				spec requires: #(Ombu) ];
			package: 'Epicea' with: [
				spec requires: #(Ombu) ];
			package: 'EpiceaBrowsers' with: [
				spec requires: #(Epicea Hiedra) ];
			package: 'EpiceaTests' with: [
				spec requires: #(Epicea) ];
			package: 'EpiceaBrowsersTests' with: [
				spec requires: #(EpiceaBrowsers EpiceaTests) ];
			package: 'EpiceaBenchmarks' with: [ 
				spec requires: #(EpiceaBrowsersTests SMark) ];
			package: 'EpiceaKomitter' with: [
				spec requires: #(EpiceaBrowsersTests) ];
			package: 'EpiceaSUnit' with: [
				spec requires: #(EpiceaBrowsersTests) ].

		spec group: 'default' overrides: #(EpiceaBrowsers EpiceaBrowsersTests OmbuTests HiedraTests).
		spec group: 'core' overrides: #(EpiceaBrowsers).
		spec group: 'benchmarks' with: #(EpiceaBrowsers EpiceaBrowsersTests OmbuTests EpiceaBenchmarks).
		spec group: 'komitter' with: #(EpiceaBrowsers EpiceaBrowsersTests OmbuTests EpiceaKomitter).
		spec group: 'sunit' with: #(EpiceaBrowsers EpiceaBrowsersTests OmbuTests EpiceaSUnit).
	].
