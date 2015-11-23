pre2_2_0: spec
	<version: 'v2.2.0-pre'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:master' ];
				import: 'QualityAssistant' ].