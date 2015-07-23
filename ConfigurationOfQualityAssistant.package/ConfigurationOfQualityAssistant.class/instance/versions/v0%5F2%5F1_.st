v0_2_1: spec
	<version: 'v0.2.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.2.1' ];
				import: 'QualityAssistant' ].