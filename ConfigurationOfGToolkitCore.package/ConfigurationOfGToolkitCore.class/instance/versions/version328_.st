version328: spec
	<version: '3.28' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.28'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/22/2016 23:31'.
		spec 
			project: 'GTPlaygroundCore' with: '3.16';
			project: 'GTInspectorCore' with: '3.20';
			project: 'GTSpotter' with: '2.17';
			project: 'GTDebugger' with: '3.2'. ].
