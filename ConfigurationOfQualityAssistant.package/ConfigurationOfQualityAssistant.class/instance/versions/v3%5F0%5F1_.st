v3_0_1: spec
	<version: 'v3.0.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v3.0.1' ];
				import: 'QualityAssistant' ].