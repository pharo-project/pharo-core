brickApi

	^ brickApi ifNil: [ brickApi := GLMBrickWrapper on: self ]