install
	"install the code into a memory heap"
	self assert: code notNil.
	nativeFunction := NBNativeFunction code: code fnSpec: fnSpec.
	^ nativeFunction 