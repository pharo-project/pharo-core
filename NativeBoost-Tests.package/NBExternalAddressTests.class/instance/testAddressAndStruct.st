as yet unclassified
testAddressAndStruct

	| struct addr string |
	
	struct := NBTestStructure2 new.
	
	self assert: struct addr class == NBExternalAddress .  
	
	addr := NativeBoost allocate: 10.
	[
		addr writeString: 'abcde'.

		struct addr: addr.
		
		self assert: addr = struct addr.

		string := struct addr readString .		
	] ensure: [ NativeBoost free: addr ].

	self assert: string = 'abcde'
