readOnlyDo: aBlock
	| sourceFilesCopy |
	"get a read only copy of each file"
	sourceFilesCopy := self collect: [:aFile | aFile ifNotNil: [ aFile readOnlyCopy ] ].

	[ aBlock value: sourceFilesCopy ] ensure: [
		"close the files"
		sourceFilesCopy do: [ :aFile | aFile ifNotNil: [ aFile close ] ] ]