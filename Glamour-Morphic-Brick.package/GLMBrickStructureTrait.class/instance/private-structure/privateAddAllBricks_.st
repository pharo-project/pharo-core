privateAddAllBricks: aCollection

	aCollection do: [ :each | self privateAddBrickBack: each ]