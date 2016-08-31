version315: spec
	<version: '3.15' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.27'.
		spec author: 'AndreiChis'.
		spec timestamp: '8/25/2016 14:40'.
		spec project: 'GTInspectorCore' with: '3.19'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-TheIntegrator.130';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
