v2_2_2: spec
	<version: 'v2.2.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.2.2' ];
				import: 'QualityAssistant' ].