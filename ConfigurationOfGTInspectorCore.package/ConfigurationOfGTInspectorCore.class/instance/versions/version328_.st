version328: spec
	<version: '3.28' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.36'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/6/2017 14:09'.
		spec project: 'GlamourCore' with: '4.36'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-AndreiChis.465';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.256';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-AndreiChis.60'. ].
