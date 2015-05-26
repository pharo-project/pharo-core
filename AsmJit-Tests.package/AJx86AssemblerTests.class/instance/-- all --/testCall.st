testCall

	asm 
		call: EAX;
		call: EAX ptr - 4;
		call: EAX ptr.
	self assert: asm bytes =  #(255 208 255 80 252 255 16) asByteArray