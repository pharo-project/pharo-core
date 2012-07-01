context stack menu
contextStackKey: aChar from: view
	"Respond to a keystroke in the context list"

 	| selector |
	selector := ContextStackKeystrokes at: aChar ifAbsent: [nil].
	selector ifNil: [self messageListKey: aChar from: view]
		ifNotNil: [self perform: selector]