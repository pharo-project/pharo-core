testing
testInstallingNativeCode
	"
	Test a protocol for installing/removing native code directly.
	"
	NBNativeCodeGen removeNativeCodeFrom: (self class>>#stub).
	self assert: (self class>>#stub) hasNativeCode not.
	
	self assert: self stub = 100.
	
	 [
		NBNativeCodeGen installNativeCode: self return0Code into: (self class>>#stub).
		self assert: (self class>>#stub) hasNativeCode.

		self assert: (self stub = 0).
	] ensure: [
		NBNativeCodeGen removeNativeCodeFrom: (self class>>#stub).
	].
	 
	self assert: (self class>>#stub) hasNativeCode not.
