fromSton: stonReader
	^ self streamContents: [ :stream |
		stonReader parseListDo: [ :each |
			stream nextPut: each ] ]