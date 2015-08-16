v1_2_2: spec
	<version: 'v1.2.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.2.2' ];
				import: 'QualityAssistant' ].