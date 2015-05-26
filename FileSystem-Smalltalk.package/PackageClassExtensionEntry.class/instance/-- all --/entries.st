entries
	^ Array streamContents: [ :stream | 
		self fileEntriesDo: [ :entry | stream nextPut: entry ]].