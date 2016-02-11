v2_3_4: spec
	<version: 'v2.3.4'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.3.4' ];
				import: 'QualityAssistant' ].