initializeSize: aNumber factory: aBlock 
	"initialize the receiver's size and factory"
	size := aNumber.
	values := Array new: aNumber withAll: {nil. nil. nil}.
	factory := aBlock.
	calls := 0.
	hits := 0