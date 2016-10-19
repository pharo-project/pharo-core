isBlockVar
	"true if a variable node is defined by a block scope"

	^ self binding scope isBlockScope