testDegreeCos
	"self run: #testDegreeCos"
	
	self shouldnt: [ (4/3) degreeCos] raise: Error.
	-361/3 to: 359/3 do: [:i |
		self assert: (i degreeCos closeTo: i degreesToRadians cos)].