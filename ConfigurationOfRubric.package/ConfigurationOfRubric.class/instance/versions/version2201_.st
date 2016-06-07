version2201: spec
	<version: '2.20.1' imports: #('2.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'sync with Pharo packages'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '06/03/2016 13:42'.
		spec 
			package: 'Rubric' with: 'Rubric-TheIntegrator.372';
			package: 'Rubric-Styling' with: 'Rubric-Styling-TheIntegrator.3';
			package: #'Rubric-Rules' with: 'Rubric-Rules-TheIntegrator.5'. ].
