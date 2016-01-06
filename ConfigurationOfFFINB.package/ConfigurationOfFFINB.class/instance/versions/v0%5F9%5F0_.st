v0_9_0: spec
	<version: '0.9.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'FFINB'
					with: [ spec repository: 'github://estebanlm/ffi-nb:v0.9.0' ];
				import: 'FFINB' ].