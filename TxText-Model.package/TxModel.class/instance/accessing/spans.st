spans
	^ Array streamContents: [ :s|
		self spansDo: [ :span | s nextPut: span ]]