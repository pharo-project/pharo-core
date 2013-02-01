as yet unclassified
benchQSort

	| bytes memBytes callback callback2 times |
	
	bytes := #[ 2 5 3 10 39 4 80 203 94 215 30 60 80 20 1 4 0 ].
	memBytes := NativeBoost allocate: bytes size.
	
	callback := self createNativeCallback.
	callback2 := NBQSortCallback on: [:a :b | (a byteAt: 0) - (b byteAt: 0) ].

	[ 
		callback install.
		
		times := { 
			[ bytes copy sort ].
	  		[ self primNativeQSort: bytes copy compare: callback address ].
			[ NativeBoost memCopy: bytes to:  memBytes size: bytes size. 
			  self primStQSort: memBytes len: bytes size compare: callback2 ].
		}
		collect: [:block |
			[ 100000 timesRepeat: block ] timeToRun ].

	] ensure:  [ callback uninstall. NativeBoost free: memBytes ].

	^ times

