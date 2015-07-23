v0_1_0: spec
	<version: 'v0.1.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.1.0' ];
				import: 'QualityAssistant' ].