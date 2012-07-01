instance creation
row: aCollection
	"Should this be called #fromRow:?"

	^self rows: 1 columns: aCollection size contents: aCollection asArray shallowCopy