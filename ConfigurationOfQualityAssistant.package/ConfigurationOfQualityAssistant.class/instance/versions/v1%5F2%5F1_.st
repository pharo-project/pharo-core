v1_2_1: spec
	<version: 'v1.2.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.2.1' ];
				import: 'QualityAssistant' ].