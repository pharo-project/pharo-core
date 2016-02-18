v2_3_5: spec
	<version: 'v2.3.5'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.3.5' ];
				import: 'QualityAssistant' ].