tests
testSupportedProtocols

	| gen spec arg | 
	gen := NBFFICallout new requestor: self.
	CLASSVAR := self. "so we will receive #asNBExternalType: "
	gen anonSpec: #(CLASSVAR (CLASSVAR testIvar)).
	
	spec := gen fnSpec.
	
	self assert: spec returnType class == NBUInt32.
	
	arg := spec arguments first.

	self assert: arg class == NBUInt32.
	self assert: arg loader ='testIvar loader'.
		