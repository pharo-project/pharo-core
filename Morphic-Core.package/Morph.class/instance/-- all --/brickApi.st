brickApi

	^ self valueOfProperty: #brickApi ifAbsentPut: [ GLMBrickMorphWrapper on: self ]