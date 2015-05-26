testCBGeneratedCode
	
	| addr trunk |

	
	addr := NBQSortCallback callbackEnterAddress asUnsignedLong.
	trunk := NBQSortCallback trunkCode.
	
	self assert: (trunk bytes unsignedLongAt: 1+ (trunk offsetAt: #cbEnterAddress) bigEndian: false) = addr.
	
	
	