testSetCommentsToNil

	self node comments: nil.
	self assert: self node comments equals: #()