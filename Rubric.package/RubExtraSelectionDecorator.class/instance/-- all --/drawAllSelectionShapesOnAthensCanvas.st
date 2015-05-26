drawAllSelectionShapesOnAthensCanvas
	findReplaceShapes ifNotNil: [ findReplaceShapes do: [ :selblock | self drawSelectionShapeOnAthensCanvas: selblock ] ].
	secondarySelectionShapes ifNotNil: [ secondarySelectionShapes do: [ :selblock | self drawSelectionShapeOnAthensCanvas: selblock ] ]