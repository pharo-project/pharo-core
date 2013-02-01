native callbacks
testcallbackAddress

	| callback addr1 addr2 |

	callback := self createNativeCallback.
	
	[ 
		callback install.
		addr1 := callback address value.
		addr2 := self checkCallbackAddress: callback address.
	] ensure:  [ callback uninstall ].

	self assert: (addr1 = addr2)