version106: spec
	<version: '1.0.6' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.6'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/06/2014 11:42'.
		spec 
			project: 'GlamourCore' with: '2.75'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-AndreiChis.242';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.63';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
