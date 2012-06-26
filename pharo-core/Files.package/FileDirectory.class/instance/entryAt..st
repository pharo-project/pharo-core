file status
entryAt: fileName  
	"find the entry with local name fileName"

	^self entryAt: fileName ifAbsent: [ self error: 'file not in directory: ', fileName ].