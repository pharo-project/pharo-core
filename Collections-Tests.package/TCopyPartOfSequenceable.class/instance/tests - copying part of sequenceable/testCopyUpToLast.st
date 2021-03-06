testCopyUpToLast
	| result index collection |
	collection := self collectionWithoutEqualElements .
	index:= self indexInForCollectionWithoutDuplicates .
	result := collection   copyUpToLast: (collection  at:index).
	
	"verify content of 'result' :"
	1 to: result size do: [:i| self assert: (collection   at:i)=(result at:i)].
	
	"verify size of 'result' :"
	self assert: result size = (index-1).