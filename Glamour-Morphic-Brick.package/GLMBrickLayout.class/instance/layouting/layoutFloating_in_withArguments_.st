layoutFloating: aBrick in: newBounds withArguments: arguments
	"must return an integer that will be added to the offset, if necessary"
	
	|float symbol|
	float := aBrick layoutProperties floating.
	symbol := self floatingMethodFor: float.
	
	^ (self respondsTo: symbol)
		ifTrue: [ self perform: symbol with: aBrick with: newBounds with: arguments ]
		ifFalse: [ 0 ]