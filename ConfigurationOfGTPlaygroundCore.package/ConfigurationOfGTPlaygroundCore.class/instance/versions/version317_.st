version317: spec
	<version: '3.17' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.29'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/4/2016 12:00'.
		spec project: 'GTInspectorCore' with: '3.21'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-AndreiChis.131';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
