pre2_6_0: spec
	<version: 'v2.6.0-pre'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:master' ];
				import: 'QualityAssistant' ].