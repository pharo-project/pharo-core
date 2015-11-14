v1_4_3: spec
	<version: 'v1.4.3'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v1.4.3' ];
				import: 'QualityAssistant' ].