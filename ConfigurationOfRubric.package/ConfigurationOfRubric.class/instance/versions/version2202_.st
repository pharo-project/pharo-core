version2202: spec
	<version: '2.20.2' imports: #('2.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Renamed paintMode -> paintOptions'.
		spec author: 'AliakseiSyrel'.
		spec timestamp: '06/04/2016 15:58'.
		spec 
			package: 'Rubric' with: 'Rubric-AliakseiSyrel.373';
			package: 'Rubric-Styling' with: 'Rubric-Styling-TheIntegrator.3';
			package: #'Rubric-Rules' with: 'Rubric-Rules-TheIntegrator.5'. ].
