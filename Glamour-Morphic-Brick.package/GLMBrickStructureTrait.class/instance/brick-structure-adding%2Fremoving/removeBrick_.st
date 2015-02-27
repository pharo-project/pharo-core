removeBrick: aBrick
	|result|
	aBrick ifNil: [ ^ aBrick ].
	result := self privateRemoveBrick: aBrick.
	self doLayoutForce.
	^ result