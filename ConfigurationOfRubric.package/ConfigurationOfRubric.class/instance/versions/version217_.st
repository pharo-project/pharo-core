version217: spec
	<version: '2.17' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'disable styling with background priority'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '3/31/2016 17:00'.
		spec 
			package: 'Rubric' with: 'Rubric-PavelKrivanek.355';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.2'. ].
