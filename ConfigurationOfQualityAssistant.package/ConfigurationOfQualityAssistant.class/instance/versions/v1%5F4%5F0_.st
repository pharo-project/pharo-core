v1_4_0: spec
	<version: 'v1.4.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.4.0' ];
				import: 'QualityAssistant' ].