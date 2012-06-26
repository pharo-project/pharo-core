comparing
= aDirectory
	"Compare two FileDirectory instances."
	
	^(aDirectory isKindOf: FileDirectory) and: [
		(pathName asString 
			compare: aDirectory pathName asString 
			caseSensitive: (self isCaseSensitive or: [ aDirectory isCaseSensitive ])) = 2 ]