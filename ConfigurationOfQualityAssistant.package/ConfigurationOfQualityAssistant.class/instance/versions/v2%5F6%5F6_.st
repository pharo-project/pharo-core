v2_6_6: spec
	<version: 'v2.6.6'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.6.6' ];
				import: 'QualityAssistant' ].