testDegreeSin
	"self run: #testDegreeSin"
	
	self shouldnt: [ (4/3) degreeSin] raise: Error.
	-361/3 to: 359/3 do: [:i |
		self assert: (i degreeSin closeTo: i degreesToRadians sin)].