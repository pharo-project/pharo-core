v2_2_0: spec
	<version: 'v2.2.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.2.0' ];
				import: 'QualityAssistant' ].