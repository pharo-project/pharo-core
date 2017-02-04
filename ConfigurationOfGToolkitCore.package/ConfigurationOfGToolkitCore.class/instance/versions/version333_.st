version333: spec
	<version: '3.33' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.33'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/3/2017 18:30'.
		spec 
			project: 'GTPlaygroundCore' with: '3.21';
			project: 'GTInspectorCore' with: '3.25';
			project: 'GTSpotter' with: '2.23';
			project: 'GTDebugger' with: '3.7'. ].
