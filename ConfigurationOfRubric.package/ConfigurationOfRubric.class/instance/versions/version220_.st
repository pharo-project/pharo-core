version220: spec
	<version: '2.20' imports: #('2.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.20'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '05/31/2016 13:42'.
		spec 
			package: 'Rubric' with: 'Rubric-PavelKrivanek.371';
			package: 'Rubric-Styling' with: 'Rubric-Styling-PavelKrivanek.1';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.3'. ].
