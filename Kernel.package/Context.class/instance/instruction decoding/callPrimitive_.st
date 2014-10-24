callPrimitive: primNumber
	| res |
	res := self doPrimitive: primNumber method: self method receiver: receiver args: self arguments.
	primNumber >= (1 << 15) ifTrue: [ "inlined primitive, cannot fail" ^ self push: res ].  
	"regular primitive. Always at the beginning of methods."
	res = PrimitiveFailToken ifTrue: [ "keeps interpreting the method" ^ self ].
	self push: res.
	self methodReturnTop.