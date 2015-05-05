spans
	^ Array streamContents: [ :stream |
		self spansDo: [ :span | stream nextPut: span ] ]