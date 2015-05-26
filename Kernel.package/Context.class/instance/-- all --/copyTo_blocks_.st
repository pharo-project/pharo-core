copyTo: aContext blocks: dict
	"Copy self and my sender chain down to, but not including, aContext.  End of copied chain will have nil sender.  BlockContexts whose home is also copied will point to the copy.  However, blockContexts that are not on the stack but may be later will not have their home pointing in the new copied thread.  So an error will be raised if one of these tries to return directly to its home."

	| copy |
	self == aContext ifTrue: [^ nil].
	copy := self copy.
	dict at: self ifPresent: [ :blocks | 
		blocks do: [ :block | 
			block privHome: copy ]].
	self sender ifNotNil: [
		copy privSender: (self sender copyTo: aContext blocks: dict)].
	^ copy