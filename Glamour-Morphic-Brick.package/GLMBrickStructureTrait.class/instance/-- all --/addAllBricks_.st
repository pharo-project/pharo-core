addAllBricks: aCollection
	|bricks|
	bricks := self privateAddAllBricks: aCollection.
	bricks do: [ :b | self privatePrepareBrickAfterAdding: b ].
	self doLayoutForce.
	^ aCollection