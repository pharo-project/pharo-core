descending
	"Return a SortFunction around the receiver, where the receiver will be used as a unary message to send to both a and b during sorting, and then the result of said send will be collated in descending order using the <=> method."
	"Example: #('abc'  'de' 'fghi') sorted: #size descending"

	^SortFunction descend sendMessage: self