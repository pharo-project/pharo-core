testRetrieveContents
	| contents |
	contents := 'http://zn.stfx.eu/zn/small.html' asUrl retrieveContents.
	self assert: contents isString.
	self assert: (contents includesSubstring: 'Small')