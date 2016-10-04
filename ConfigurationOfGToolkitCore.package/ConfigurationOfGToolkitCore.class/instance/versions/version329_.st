version329: spec
	<version: '3.29' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.29'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/4/2016 12:00'.
		spec 
			project: 'GTPlaygroundCore' with: '3.17';
			project: 'GTInspectorCore' with: '3.21';
			project: 'GTSpotter' with: '2.18';
			project: 'GTDebugger' with: '3.3'. ].
