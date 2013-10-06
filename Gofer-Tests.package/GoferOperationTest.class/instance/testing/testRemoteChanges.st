testRemoteChanges
	| changes |
	gofer package: 'GoferBar'; load.
	(Smalltalk globals classNamed: #GoferBar) compile: 'foo'.
	self shouldnt: [ changes := gofer remoteChanges ] raise: Error.
	self assert: changes operations size = 1