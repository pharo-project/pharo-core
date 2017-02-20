version323: spec
	<version: '3.23' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.35'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/20/2017 16:30'.
		spec project: 'GTInspectorCore' with: '3.27'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-AndreiChis.140';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
