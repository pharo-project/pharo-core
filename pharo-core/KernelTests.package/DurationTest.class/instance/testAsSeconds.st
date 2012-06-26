testing
testAsSeconds
	self assert: (Duration nanoSeconds: 1000000000)  asSeconds = 1.
	self assert: (Duration seconds: 1)  asSeconds = 1.	
	self assert: aDuration   asSeconds = 93784.