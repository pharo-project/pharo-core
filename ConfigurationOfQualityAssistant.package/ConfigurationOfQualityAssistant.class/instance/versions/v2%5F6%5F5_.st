v2_6_5: spec
	<version: 'v2.6.5'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.6.5' ];
				import: 'QualityAssistant' ].