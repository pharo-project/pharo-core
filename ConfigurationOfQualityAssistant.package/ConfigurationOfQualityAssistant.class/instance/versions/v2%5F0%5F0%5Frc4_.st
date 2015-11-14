v2_0_0_rc4: spec
	<version: 'v2.0.0-rc4'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.0.0-rc4' ];
				import: 'QualityAssistant' ].