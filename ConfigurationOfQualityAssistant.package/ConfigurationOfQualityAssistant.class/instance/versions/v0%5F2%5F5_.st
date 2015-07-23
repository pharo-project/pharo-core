v0_2_5: spec
	<version: 'v0.2.5'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.2.5' ];
				import: 'QualityAssistant' ].