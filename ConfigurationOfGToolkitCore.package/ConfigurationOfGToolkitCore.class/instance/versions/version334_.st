version334: spec
	<version: '3.34' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.26'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/11/2017 18:13'.
		spec 
			project: 'GTPlaygroundCore' with: '3.22';
			project: 'GTInspectorCore' with: '3.26';
			project: 'GTSpotter' with: '2.24';
			project: 'GTDebugger' with: '3.8'. ].
