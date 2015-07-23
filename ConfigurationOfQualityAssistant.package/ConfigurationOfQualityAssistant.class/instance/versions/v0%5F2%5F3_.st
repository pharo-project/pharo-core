v0_2_3: spec
	<version: 'v0.2.3'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v0.2.3' ];
				import: 'QualityAssistant' ].