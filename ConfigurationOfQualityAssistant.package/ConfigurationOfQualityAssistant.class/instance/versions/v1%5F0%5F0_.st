v1_0_0: spec
	<version: 'v1.0.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.0.0' ];
				import: 'QualityAssistant' ].