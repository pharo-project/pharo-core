pre0_9_0: spec
	<version: 'v0.9.0-pre'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'Renraku'
					with: [ spec repository: 'github://Uko/Renraku:master' ];
				import: 'Renraku' ].