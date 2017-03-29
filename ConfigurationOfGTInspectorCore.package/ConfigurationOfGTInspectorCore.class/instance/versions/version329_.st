version329: spec
	<version: '3.29' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.37'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/28/2017 16:27'.
		spec project: 'GlamourCore' with: '4.37'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-AliakseiSyrel.466';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-AndreiChis.259';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-AndreiChis.60'. ].
