instance creation
column: aCollection
	"Should this be called #fromColumn:?"

	^self rows: aCollection size columns: 1 contents: aCollection asArray shallowCopy