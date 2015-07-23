v0_6_1: spec
	<version: 'v0.6.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.6.1' ];
				import: 'QualityAssistant' ].