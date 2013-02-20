tests
testGenerateAndRetry

	NBNativeCodeGen removeNativeCodeFrom: (self class>>#stub2).
 	[
		self assert: self stub2 = 0.
	] ensure: [
		NBNativeCodeGen removeNativeCodeFrom: (self class>>#stub2).
	].	 
