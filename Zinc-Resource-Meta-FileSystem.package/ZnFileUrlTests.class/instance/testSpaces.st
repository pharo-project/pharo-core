testing
testSpaces
	self 
		assert: 'file:///foo%20bar/test.st' asZnUrl asFileReference 
		equals: '/foo bar/test.st' asFileReference.
	self 
		assert: '/foo bar/test.st' asFileReference asZnUrl 
		equals: 'file:///foo%20bar/test.st' asZnUrl