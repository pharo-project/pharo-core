instance creation
new: n
	"ShortRunArrays must be created with either
		someCollection as: ShortRunArray
	or by using
		ShortRunArray runs: runCollection values: valueCollection.
	"
	^self shouldNotImplement