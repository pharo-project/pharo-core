version219: spec
	<version: '2.19' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'merge all an more'.
		spec author: 'DenisKudryashov'.
		spec timestamp: '4/13/2016 13:48'.
		spec 
			package: 'Rubric' with: 'Rubric-MarcusDenker.360';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.3'. ].
