sorting
sorted: aSortBlock
	"Return a new sequenceable collection which contains the same elements as self but its elements are sorted by aSortBlock. The block should take two arguments and return true if the first element should preceed the second one."
	
	^self copy sort: aSortBlock