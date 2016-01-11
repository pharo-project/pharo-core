v2_2_1: spec
	<version: 'v2.2.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.2.1' ];
				import: 'QualityAssistant' ].