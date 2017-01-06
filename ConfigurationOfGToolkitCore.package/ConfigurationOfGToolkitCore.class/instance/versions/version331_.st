version331: spec
	<version: '3.31' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Glamour version 4.28 includes Glamour <--> Spec integration'.
		spec author: 'JurajKubelka'.
		spec timestamp: '12/27/2016 13:19'.
		spec 
			project: 'GTPlaygroundCore' with: '3.19';
			project: 'GTInspectorCore' with: '3.23';
			project: 'GTSpotter' with: '2.21';
			project: 'GTDebugger' with: '3.5'. ].
