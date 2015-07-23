v0_6_0: spec
	<version: 'v0.6.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.6.0' ];
				import: 'QualityAssistant' ].