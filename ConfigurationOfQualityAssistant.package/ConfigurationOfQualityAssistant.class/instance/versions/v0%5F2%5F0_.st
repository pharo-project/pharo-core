v0_2_0: spec
	<version: 'v0.2.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.2.0' ];
				import: 'QualityAssistant' ].