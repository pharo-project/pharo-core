drawAllSelectionShapes
	findReplaceShapes ifNotNil: [ findReplaceShapes do: [ :selblock | self drawSelectionShape: selblock ] ].
	secondarySelectionShapes ifNotNil: [ secondarySelectionShapes do: [ :selblock | self drawSelectionShape: selblock ] ]