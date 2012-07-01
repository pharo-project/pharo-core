tests
testResolvePath
	"self debug: #testResolvePath"
	
	| path |
	path := Path / 'grandfather' / 'father' / 'child'.
	self assert: (path resolvePath: Path / 'grandfather') = (Path / 'grandfather').
	self assert: (path resolvePath: Path / 'child') = (Path / 'child').
	self assert: (path resolvePath: Path * 'grandfather') = (Path / 'grandfather' / 'father' / 'child' / 'grandfather').
	self assert: (path resolvePath: Path * 'child') = (Path / 'grandfather' / 'father' / 'child' / 'child').
	self assert: (path resolvePath: Path * 'grandfather') = (Path / 'grandfather' / 'father' / 'child' / 'grandfather').
	self assert: (path resolvePath: Path * 'child') = (Path / 'grandfather' / 'father' / 'child' / 'child').
	self assert:  (path resolvePath: (Path parent) / '..') =  (Path / 'grandfather')

