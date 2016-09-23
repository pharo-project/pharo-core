version316: spec
	<version: '3.16' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.28'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/22/2016 23:31'.
		spec project: 'GTInspectorCore' with: '3.20'.
		spec 
			package: 'GT-Playground' with: 'GT-Playground-AndreiChis.131';
			package: 'GT-Tests-Playground' with: 'GT-Tests-Playground-StefanReichhart.4'. ].
