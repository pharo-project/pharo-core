version10: spec 
	<version: '1.0' imports: #('1.0-baseline')> 

	spec for: #'pharo' do: [
		spec blessing: #release.
		spec description: 'First release'.
		spec 
			package: 'PharoDocComment' 
			with: 'PharoDocComment-StephaneDucasse.6'.
			]