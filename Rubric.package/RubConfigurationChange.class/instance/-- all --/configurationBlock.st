configurationBlock
	^ configurationBlock ifNil: [ configurationBlock := [ :scrolledTextMorph | ] ]