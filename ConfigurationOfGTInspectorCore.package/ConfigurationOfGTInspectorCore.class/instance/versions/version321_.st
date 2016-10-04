version321: spec
	<version: '3.21' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.29'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/4/2016 12:00'.
		spec project: 'GlamourCore' with: '4.23'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-StefanReichhart.436';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.231';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.59'. ].
