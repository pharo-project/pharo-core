lostChanges
	
	self browserIfLostChanges: [:browser | 
		^ browser filteredEntries ].
	^ #()