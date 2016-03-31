v2_6_1: spec
	<version: 'v2.6.1'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.6.1' ];
				import: 'QualityAssistant' ].