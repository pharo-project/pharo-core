installLink
	self reflectiveMethod ifNil: [ self createTwin ].
	self reflectiveMethod increaseLinkCount.
	self invalidate.