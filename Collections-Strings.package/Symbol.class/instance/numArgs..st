system primitives
numArgs: n
	"Answer a string that can be used as a selector with n arguments.
	 TODO: need to be extended to support shrinking and for selectors like #+ " 

	| selector numArgs aStream offs |
	
	selector := self.
	(numArgs := selector numArgs) >= n ifTrue: [^self].	
	aStream := (String new: 16) writeStream.
	aStream nextPutAll: self.
	
	(numArgs = 0) ifTrue: [aStream nextPutAll: ':'. offs := 0] ifFalse: [offs := 1].
	2 to: n - numArgs + offs do: [:i | aStream nextPutAll: 'with:'].	
	^aStream contents asSymbol
	
