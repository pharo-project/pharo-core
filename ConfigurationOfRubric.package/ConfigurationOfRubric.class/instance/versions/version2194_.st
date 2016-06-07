version2194: spec
	<version: '2.19.4' imports: #('2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.19.4'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '5/50/2016 10:00'.
		spec 
			package: 'Rubric' with: 'Rubric-PavelKrivanek.370';
			package: #'Rubric-Rules' with: 'Rubric-Rules-YuriyTymchuk.3'. ].
