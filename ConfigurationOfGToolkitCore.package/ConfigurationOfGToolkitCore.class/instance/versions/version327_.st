version327: spec
	<version: '3.27' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.27'.
		spec author: 'AndreiChis'.
		spec timestamp: '8/25/2016 14:40'.
		spec 
			project: 'GTPlaygroundCore' with: '3.15';
			project: 'GTInspectorCore' with: '3.19';
			project: 'GTSpotter' with: '2.16';
			project: 'GTDebugger' with: '3.1'. ].
