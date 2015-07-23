v0_3_0: spec
	<version: 'v0.3.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.3.0' ];
				import: 'QualityAssistant' ].