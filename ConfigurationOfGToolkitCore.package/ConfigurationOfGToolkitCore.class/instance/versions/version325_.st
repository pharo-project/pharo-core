version325: spec
	<version: '3.25' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Stable version for Pharo 5.0.'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/14/2016 13:48'.
		spec 
			project: 'GTPlaygroundCore' with: '3.13';
			project: 'GTInspectorCore' with: '3.17';
			project: 'GTSpotter' with: '2.14';
			project: 'GTDebugger' with: '2.12'. ].
