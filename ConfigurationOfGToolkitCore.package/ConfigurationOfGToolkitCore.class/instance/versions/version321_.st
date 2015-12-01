version321: spec
	<version: '3.2.1' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Changes in the use of #garbageCollect'.
		spec author: 'AndreiChis'.
		spec timestamp: '11/25/2015 18:00'.
		spec 
			project: 'GTPlaygroundCore' with: '2.3.1';
			project: 'GTInspectorCore' with: '2.2.1';
			project: 'GTSpotter' with: '1.4.1'. ].
