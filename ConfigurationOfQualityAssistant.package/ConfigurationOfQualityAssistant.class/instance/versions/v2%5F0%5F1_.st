v2_0_1: spec
	<version: 'v2.0.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.0.1' ];
				import: 'QualityAssistant' ].