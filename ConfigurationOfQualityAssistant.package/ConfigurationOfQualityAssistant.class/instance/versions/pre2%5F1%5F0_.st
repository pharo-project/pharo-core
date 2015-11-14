pre2_1_0: spec
	<version: 'v2.1.0-pre'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:master' ];
				import: 'QualityAssistant' ].