version332: spec
	<version: '3.32' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.32'.
		spec author: 'AndreiChis'.
		spec timestamp: '12/27/2016 21:38'.
		spec 
			project: 'GTPlaygroundCore' with: '3.20';
			project: 'GTInspectorCore' with: '3.24';
			project: 'GTSpotter' with: '2.22';
			project: 'GTDebugger' with: '3.6'. ].
