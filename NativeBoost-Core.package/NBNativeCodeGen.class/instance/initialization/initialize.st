initialize
	asm := self newAssembler.
	options := Set new.
	proxy := NBInterpreterProxy forGenerator: self. 
	self parseOptions: self defaultOptions.

