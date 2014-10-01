version101: spec
	<version: '1.0.1' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.1'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/30/2014 17:11'.
		spec 
			project: 'GlamourCore' with: '2.71'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-TudorGirba.239';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.55';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
