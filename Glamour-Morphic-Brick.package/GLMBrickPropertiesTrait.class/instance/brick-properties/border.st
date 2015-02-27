border

	^ self valueOfProperty: #brickBorder ifAbsentPut: [ GLMBrickBorder new ]
	