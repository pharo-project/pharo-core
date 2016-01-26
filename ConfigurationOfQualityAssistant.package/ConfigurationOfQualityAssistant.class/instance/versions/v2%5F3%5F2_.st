v2_3_2: spec
	<version: 'v2.3.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.3.2' ];
				import: 'QualityAssistant' ].