v1_1_3: spec
	<version: 'v1.1.3'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.1.3' ];
				import: 'QualityAssistant' ].