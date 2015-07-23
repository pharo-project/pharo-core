v0_1_1: spec
	<version: 'v0.1.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.1.1' ];
				import: 'QualityAssistant' ].