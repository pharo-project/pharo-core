v1_1_1: spec
	<version: 'v1.1.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.1.1' ];
				import: 'QualityAssistant' ].