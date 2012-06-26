test - integrity
testAllDictionariesAreHealthy
	
	self assert: (Dictionary allSubInstances select: [:dict | dict isHealthy not ]) isEmpty.