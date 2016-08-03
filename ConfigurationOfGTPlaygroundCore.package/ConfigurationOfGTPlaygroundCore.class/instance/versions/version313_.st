version313: spec
	<version: '3.13' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Stable version for Pharo 5.0.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/14/2016 13:48'.
		spec project: 'GTInspectorCore' with: '3.17'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-DenisKudryashov.124';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
