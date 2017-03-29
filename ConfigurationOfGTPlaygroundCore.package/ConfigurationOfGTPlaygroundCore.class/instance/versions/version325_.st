version325: spec
	<version: '3.25' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.37'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/28/2017 16:27'.
		spec project: 'GTInspectorCore' with: '3.29'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-AliakseiSyrel.146';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
