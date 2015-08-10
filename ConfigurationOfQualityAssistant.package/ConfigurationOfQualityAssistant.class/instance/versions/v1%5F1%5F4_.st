v1_1_4: spec
	<version: 'v1.1.4'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.1.4' ];
				import: 'QualityAssistant' ].