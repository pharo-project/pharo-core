v2_6_7: spec
	<version: 'v2.6.7'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.6.7' ];
				import: 'QualityAssistant' ].