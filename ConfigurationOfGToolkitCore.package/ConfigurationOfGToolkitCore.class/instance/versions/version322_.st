version322: spec
	<version: '3.2.2' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Update GTools: small fixes and improvements (issue 17184)'.
		spec author: 'AndreiChis'.
		spec timestamp: '12/4/2015 11:12'.
		spec 
			project: 'GTPlaygroundCore' with: '2.3.2';
			project: 'GTInspectorCore' with: '2.2.2';
			project: 'GTSpotter' with: '1.4.2'. ].
