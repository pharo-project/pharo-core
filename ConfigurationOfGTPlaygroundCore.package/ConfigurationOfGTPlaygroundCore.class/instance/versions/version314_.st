version314: spec
	<version: '3.14' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Prevent infinite loop in GLMScrollListBrick>>#preventOverscrolling
 - in some cases it was moving band to the top and to the bottom.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/21/2016 18:06'.
		spec project: 'GTInspectorCore' with: '3.18'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-TheIntegrator.130';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
