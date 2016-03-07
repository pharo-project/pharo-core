v2_4_0: spec
	<version: 'v2.4.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.4.0' ];
				import: 'QualityAssistant' ].