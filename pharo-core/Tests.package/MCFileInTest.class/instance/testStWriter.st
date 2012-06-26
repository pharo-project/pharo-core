testing
testStWriter
	self
		assertFileOutFrom: MCStWriter
		canBeFiledInWith: [ CodeImporter evaluateReadStream: stream readStream].
