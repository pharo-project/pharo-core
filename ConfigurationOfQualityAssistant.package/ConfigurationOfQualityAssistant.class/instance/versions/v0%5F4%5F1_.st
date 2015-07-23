v0_4_1: spec
	<version: 'v0.4.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.4.1' ];
				import: 'QualityAssistant' ].