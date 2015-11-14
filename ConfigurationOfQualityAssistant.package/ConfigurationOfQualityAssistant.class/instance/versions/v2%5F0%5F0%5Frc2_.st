v2_0_0_rc2: spec
	<version: 'v2.0.0-rc2'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.0.0-rc2' ];
				import: 'QualityAssistant' ].