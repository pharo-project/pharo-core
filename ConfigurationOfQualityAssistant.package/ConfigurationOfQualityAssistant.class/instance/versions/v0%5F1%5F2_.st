v0_1_2: spec
	<version: 'v0.1.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.1.2' ];
				import: 'QualityAssistant' ].