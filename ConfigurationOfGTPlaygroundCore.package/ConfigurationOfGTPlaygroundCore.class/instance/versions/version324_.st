version324: spec
	<version: '3.24' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.36'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/6/2017 14:09'.
		spec project: 'GTInspectorCore' with: '3.28'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-AndreiChis.145';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
