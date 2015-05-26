ensureKeywords

	^ self hasKeywords 
		ifFalse: [ self defineKeywordsTemplate ]