version319: spec
	<version: '3.19' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Adds some examples for GlamourPresentationModel'.
		spec author: 'JurajKubelka'.
		spec timestamp: '12/27/2016 13:05'.
		spec project: 'GTInspectorCore' with: '3.23'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-JurajKubelka.136';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
