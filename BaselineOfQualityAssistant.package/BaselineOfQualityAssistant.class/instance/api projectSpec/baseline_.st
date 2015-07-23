baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'QualityAssistant' with: [ spec requires: 'Renraku' ];
				postLoadDoIt: #installPlugin.
			spec baseline: 'Renraku' with: [ spec repository: 'github://Uko/Renraku:v0.3.2' ] ]