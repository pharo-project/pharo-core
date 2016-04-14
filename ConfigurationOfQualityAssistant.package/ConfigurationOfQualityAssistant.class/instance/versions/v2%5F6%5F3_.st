v2_6_3: spec
	<version: 'v2.6.3'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.6.3' ];
				import: 'QualityAssistant' ].