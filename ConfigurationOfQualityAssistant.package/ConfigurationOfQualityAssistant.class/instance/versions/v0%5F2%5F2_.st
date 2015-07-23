v0_2_2: spec
	<version: 'v0.2.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.2.2' ];
				import: 'QualityAssistant' ].