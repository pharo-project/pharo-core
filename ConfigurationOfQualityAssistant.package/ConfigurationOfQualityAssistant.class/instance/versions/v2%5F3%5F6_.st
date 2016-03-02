v2_3_6: spec
	<version: 'v2.3.6'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.3.6' ];
				import: 'QualityAssistant' ].