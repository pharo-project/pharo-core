v2_5_1: spec
	<version: 'v2.5.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.5.1' ];
				import: 'QualityAssistant' ].