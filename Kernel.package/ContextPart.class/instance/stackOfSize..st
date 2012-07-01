debugger access
stackOfSize: limit 
	"Answer an OrderedCollection of the top 'limit' contexts
	 on the receiver's sender chain."

	| stack ctxt |
	stack := OrderedCollection new.
	stack addLast: (ctxt := self).
	[(ctxt := ctxt sender) ~~ nil
	 and: [stack size < limit]] whileTrue:
		[stack addLast: ctxt].
	^stack