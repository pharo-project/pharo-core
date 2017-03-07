version336: spec
	<version: '3.36' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.36'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/6/2017 14:09'.
		spec 
			project: 'GTPlaygroundCore' with: '3.24';
			project: 'GTInspectorCore' with: '3.28';
			project: 'GTSpotter' with: '2.26';
			project: 'GTDebugger' with: '3.10'. ].
