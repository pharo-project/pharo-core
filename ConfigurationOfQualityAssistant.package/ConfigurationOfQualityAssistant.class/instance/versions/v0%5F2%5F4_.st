v0_2_4: spec
	<version: 'v0.2.4'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.2.4' ];
				import: 'QualityAssistant' ].