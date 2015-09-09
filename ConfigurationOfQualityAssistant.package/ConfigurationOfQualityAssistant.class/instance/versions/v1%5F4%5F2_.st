v1_4_2: spec
	<version: 'v1.4.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.4.2' ];
				import: 'QualityAssistant' ].