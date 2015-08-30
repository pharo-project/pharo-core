v1_4_1: spec
	<version: 'v1.4.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.4.1' ];
				import: 'QualityAssistant' ].