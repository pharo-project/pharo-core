version322: spec
	<version: '3.22' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.30'.
		spec author: 'AndreiChis'.
		spec timestamp: '11/1/2016 11:15'.
		spec project: 'GlamourCore' with: '4.24'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-AndreiChis.439';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.234';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-StefanReichhart.59'. ].
