version335: spec
	<version: '3.35' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.35'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/20/2017 16:30'.
		spec 
			project: 'GTPlaygroundCore' with: '3.23';
			project: 'GTInspectorCore' with: '3.27';
			project: 'GTSpotter' with: '2.25';
			project: 'GTDebugger' with: '3.9'. ].
