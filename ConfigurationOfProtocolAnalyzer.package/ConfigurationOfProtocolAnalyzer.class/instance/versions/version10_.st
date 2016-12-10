version10: spec 
	<version: '1.0' imports: #('1.0-baseline')> 

	spec for: #'pharo' do: [
		spec blessing: #'release'.
		spec description: 'First release'.
		spec 
			package: 'ProtocolAnalyzer' 
			with: 'ProtocolAnalyzer-StephaneDucasse.1'.
			]