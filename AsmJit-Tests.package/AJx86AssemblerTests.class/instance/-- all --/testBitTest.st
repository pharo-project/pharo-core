testBitTest

	asm 
		bt: EAX with: 0.

	self assert: asm bytes =  #(16r0F 16rBA 16rE0 16r00) asByteArray