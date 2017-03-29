version337: spec
	<version: '3.37' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.37'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/28/2017 16:27'.
		spec 
			project: 'GTPlaygroundCore' with: '3.25';
			project: 'GTInspectorCore' with: '3.29';
			project: 'GTSpotter' with: '2.27';
			project: 'GTDebugger' with: '3.11'. ].
