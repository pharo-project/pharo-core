private
perform: selector orSendTo: otherTarget
	"<lint: #expect rule: #badMessage rational: 'this is a common morphic pattern'>"
	
	^ (self respondsTo: selector)
		ifTrue: [ self perform: selector ]
		ifFalse: [ super perform: selector orSendTo: otherTarget ].