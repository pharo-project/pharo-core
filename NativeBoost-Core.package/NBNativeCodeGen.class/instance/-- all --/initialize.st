initialize
	asm := self newAssembler.
	options := Dictionary new.
	proxy := NBInterpreterProxy forGenerator: self. 
	self parseOptions: self defaultOptions.

