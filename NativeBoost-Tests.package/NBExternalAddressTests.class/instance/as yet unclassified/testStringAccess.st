testStringAccess

	| addr string |
	
	addr := NativeBoost allocate: 10.
	[
		addr writeString: 'abcde'.
		string := addr readString. 

	] ensure: [ NativeBoost free: addr ].

	self assert: string = 'abcde'
