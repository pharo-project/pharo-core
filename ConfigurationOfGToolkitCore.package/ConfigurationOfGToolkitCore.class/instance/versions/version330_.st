version330: spec
	<version: '3.30' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.30'.
		spec author: 'AndreiChis'.
		spec timestamp: '11/1/2016 11:15'.
		spec 
			project: 'GTPlaygroundCore' with: '3.18';
			project: 'GTInspectorCore' with: '3.22';
			project: 'GTSpotter' with: '2.20';
			project: 'GTDebugger' with: '3.4'. ].
