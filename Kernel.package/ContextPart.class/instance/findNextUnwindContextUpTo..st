private-exceptions
findNextUnwindContextUpTo: aContext
	"Return the next unwind marked above the receiver, returning nil if there is none.  Search proceeds up to but not including aContext."

	| ctx |
	<primitive: 195>
	ctx := self.
		[(ctx := ctx sender) == nil or: [ctx == aContext]] whileFalse:
		[ ctx isUnwindContext ifTrue: [^ctx]].
	^nil