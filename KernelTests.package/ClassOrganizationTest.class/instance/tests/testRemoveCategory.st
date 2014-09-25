testRemoveCategory
	self assert: self organization categories size = 3.
	self should: [ self organization removeCategory: 'one' ] raise: Error.
	self organization removeCategory: 'empty'.
	self assert: self organization categories size = 2.
	self assert: self organization categories first = AllProtocol defaultName.
	self assert: self organization categories second = 'one'