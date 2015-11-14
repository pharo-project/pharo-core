v1_5_0: spec
	<version: 'v1.5.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.5.0' ];
				import: 'QualityAssistant' ].