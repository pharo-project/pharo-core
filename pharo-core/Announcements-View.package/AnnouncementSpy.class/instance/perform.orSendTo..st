private
perform: selector orSendTo: otherTarget
	^ (self respondsTo: selector)
		ifTrue: [ self perform: selector ]
		ifFalse: [ super perform: selector orSendTo: otherTarget ]