v0_4_2: spec
	<version: 'v0.4.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.4.2' ];
				import: 'QualityAssistant' ].