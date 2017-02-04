version321: spec
	<version: '3.21' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.33'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/3/2017 18:29'.
		spec project: 'GTInspectorCore' with: '3.25'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-AndreiChis.140';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
