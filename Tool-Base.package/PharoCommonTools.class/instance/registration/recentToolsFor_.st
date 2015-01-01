recentToolsFor: aName
	^ (recentTools at: aName ifAbsent:[{}]) select:[:tool | tool isObsolete not].