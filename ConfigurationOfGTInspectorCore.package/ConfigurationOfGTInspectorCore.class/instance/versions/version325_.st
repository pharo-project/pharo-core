version325: spec
	<version: '3.25' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.33'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/3/2017 18:29'.
		spec project: 'GlamourCore' with: '4.32'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-TheIntegrator.444';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.245';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.59'. ].
