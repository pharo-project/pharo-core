language-side callback
testSTCallbackInstalled

	| callback trunk index |

	callback := NBQSortCallback on: [:x :y | ]. 
	trunk := callback trunk.
	index := callback index.
	
	self assert: ((NativeBoost extraRootsRegistry at: #callbacks) at: index +1) == callback.
	
	self assert: (self checkSTCallbackAddress:  callback) = trunk

	