v2_5_2: spec
	<version: 'v2.5.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.5.2' ];
				import: 'QualityAssistant' ].