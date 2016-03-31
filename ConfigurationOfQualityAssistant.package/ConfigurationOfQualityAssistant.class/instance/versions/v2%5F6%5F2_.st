v2_6_2: spec
	<version: 'v2.6.2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.6.2' ];
				import: 'QualityAssistant' ].