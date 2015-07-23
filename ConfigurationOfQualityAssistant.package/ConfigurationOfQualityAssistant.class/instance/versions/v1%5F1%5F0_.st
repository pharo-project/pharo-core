v1_1_0: spec
	<version: 'v1.1.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.1.0' ];
				import: 'QualityAssistant' ].