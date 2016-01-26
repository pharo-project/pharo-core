v2_3_3: spec
	<version: 'v2.3.3'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.3.3' ];
				import: 'QualityAssistant' ].