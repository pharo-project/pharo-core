v2_3_1: spec
	<version: 'v2.3.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.3.1' ];
				import: 'QualityAssistant' ].