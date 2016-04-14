v2_6_4: spec
	<version: 'v2.6.4'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.6.4' ];
				import: 'QualityAssistant' ].