language-side callback
testCallbackCounter

	| callback orig bytes result ctr |
	
	"There was a bug in callback code, which crashed VM
	due to override of callgate saved method oop and return address,
	and GC, happened during callback"
	
 
	orig := #[ 2 5 55 23 67 23 ] copy.
	bytes := NativeBoost allocate: orig size.
	
	NativeBoost memCopy: orig to: bytes  size: orig size.

	ctr := 0.
	callback := NBQSortCallback on: [:a :b |

		NativeBoost insideCallback ifTrue: [ ctr := ctr+ 1].  "this involves using callgate" 
		Smalltalk garbageCollect. "this involves GC"
		 (a byteAt: 0) - (b byteAt: 0) ].
	
	self primStQSort: bytes len: orig size compare: callback.

	result := ByteArray new: orig size.
	NativeBoost memCopy: bytes to: result size: orig size.
	NativeBoost free: bytes.

	self assert: (ctr > 0).		
	self assert: (orig sort = result)



