context stack menu
up
	"move up the context stack to the next (enclosed) context"

	contextStackIndex > 1 ifTrue: [self toggleContextStackIndex: contextStackIndex-1]