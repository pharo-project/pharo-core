version318: spec
	<version: '3.18' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.30'.
		spec author: 'AndreiChis'.
		spec timestamp: '11/1/2016 11:15'.
		spec project: 'GTInspectorCore' with: '3.22'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-TheIntegrator.133';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
