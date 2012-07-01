list access
getListSize
	"return the number of items in the list"
	listSource ifNil: [ ^0 ].
	^listSource getListSize