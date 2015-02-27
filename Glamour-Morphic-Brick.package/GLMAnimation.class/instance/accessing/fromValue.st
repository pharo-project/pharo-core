fromValue

	^ fromValue ifNil: [ fromValue := fromLogic brickValue: self animatedObject ]