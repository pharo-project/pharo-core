assertWithDescription: aStringOrABlock
	self value ifFalse: [
		|value|
		value := aStringOrABlock value.
		AssertionFailure signal: value]