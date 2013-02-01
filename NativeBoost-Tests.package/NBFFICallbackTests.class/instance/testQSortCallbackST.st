language-side callback
testQSortCallbackST
	
	| callback orig bytes result |
	
	orig := #[ 2 5 3 10 39 4 80 ] copy.
	bytes := NativeBoost allocate: orig size.
	
	NativeBoost memCopy: orig to: bytes  size: orig size.

	callback := NBQSortCallback on: [:a :b | (a byteAt: 0) - (b byteAt: 0) ].
	
	self primStQSort: bytes len: orig size compare: callback.

	result := ByteArray new: orig size.
	NativeBoost memCopy: bytes to: result size: orig size.
	NativeBoost free: bytes.
		
	self assert: (orig sort = result)



